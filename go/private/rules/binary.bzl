# Copyright 2014 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load(
    "@io_bazel_rules_go//go/private:context.bzl",
    "go_context",
)
load(
    "@io_bazel_rules_go//go/private:common.bzl",
    "go_filetype",
)
load(
    "@io_bazel_rules_go//go/private:rules/prefix.bzl",
    "go_prefix_default",
)
load(
    "@io_bazel_rules_go//go/private:rules/aspect.bzl",
    "go_archive_aspect",
)
load(
    "@io_bazel_rules_go//go/private:rules/rule.bzl",
    "go_rule",
)
load(
    "@io_bazel_rules_go//go/private:providers.bzl",
    "GoLibrary",
)
load(
    "@io_bazel_rules_go//go/platform:list.bzl",
    "GOOS",
    "GOARCH",
)
load(
    "@io_bazel_rules_go//go/private:mode.bzl",
    "LINKMODE_NORMAL",
    "LINKMODES",
)

def _go_binary_impl(ctx):
  """go_binary_impl emits actions for compiling and linking a go executable."""
  go = go_context(ctx)
  if ctx.attr.linkstamp:
    print("DEPRECATED: linkstamp, please use x_def for all stamping now {}".format(ctx.attr.linkstamp))

  library = go.new_library(go, importable=False)
  source = go.library_to_source(go, ctx.attr, library, ctx.coverage_instrumented())
  name = ctx.attr.basename
  if not name:
    name = ctx.label.name
  archive, executable = go.binary(go,
      name = name,
      source = source,
      gc_linkopts = gc_linkopts(ctx),
      linkstamp=ctx.attr.linkstamp,
      version_file=ctx.version_file,
      info_file=ctx.info_file,
  )
  return [
      library, source, archive,
      DefaultInfo(
          files = depset([executable]),
          runfiles = archive.runfiles,
          executable = executable,
      ),
  ]

go_binary = go_rule(
    _go_binary_impl,
    attrs = {
        "basename": attr.string(),
        "data": attr.label_list(
            allow_files = True,
            cfg = "data",
        ),
        "srcs": attr.label_list(allow_files = go_filetype),
        "deps": attr.label_list(
            providers = [GoLibrary],
            aspects = [go_archive_aspect],
        ),
        "embed": attr.label_list(
            providers = [GoLibrary],
            aspects = [go_archive_aspect],
        ),
        "pure": attr.string(
            values = [
                "on",
                "off",
                "auto",
            ],
            default = "auto",
        ),
        "static": attr.string(
            values = [
                "on",
                "off",
                "auto",
            ],
            default = "auto",
        ),
        "race": attr.string(
            values = [
                "on",
                "off",
                "auto",
            ],
            default = "auto",
        ),
        "msan": attr.string(
            values = [
                "on",
                "off",
                "auto",
            ],
            default = "auto",
        ),
        "goos": attr.string(
            values = GOOS.keys() + ["auto"],
            default = "auto",
        ),
        "goarch": attr.string(
            values = GOARCH.keys() + ["auto"],
            default = "auto",
        ),
        "gc_goopts": attr.string_list(),
        "gc_linkopts": attr.string_list(),
        "linkstamp": attr.string(),
        "x_defs": attr.string_dict(),
        "linkmode": attr.string(values=LINKMODES, default=LINKMODE_NORMAL),
    },
    executable = True,
)
"""See go/core.rst#go_binary for full documentation."""

go_tool_binary = go_rule(
    _go_binary_impl,
    bootstrap = True,
    attrs = {
        "basename": attr.string(),
        "data": attr.label_list(
            allow_files = True,
            cfg = "data",
        ),
        "srcs": attr.label_list(allow_files = go_filetype),
        "deps": attr.label_list(providers = [GoLibrary]),
        "embed": attr.label_list(providers = [GoLibrary]),
        "gc_goopts": attr.string_list(),
        "gc_linkopts": attr.string_list(),
        "linkstamp": attr.string(),
        "x_defs": attr.string_dict(),
        "linkmode": attr.string(values=LINKMODES, default=LINKMODE_NORMAL),
    },
    executable = True,
)
"""
This is used instead of `go_binary` for tools that are executed inside
actions emitted by the go rules. This avoids a bootstrapping problem. This
is very limited and only supports sources in the main package with no
dependencies outside the standard library.

See go/core.rst#go_binary for full documentation.

TODO: This can merge with go_binary when toolchains become optional
We add a bootstrap parameter that defaults to false, set it to true on "tool" binaries
and it can pick the boostrap toolchain when it sees it.
"""

def gc_linkopts(ctx):
  gc_linkopts = [ctx.expand_make_variables("gc_linkopts", f, {})
                 for f in ctx.attr.gc_linkopts]
  return gc_linkopts
