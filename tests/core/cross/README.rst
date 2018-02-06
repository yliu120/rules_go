Cross compilation
=================

.. _go_binary: /go/core.rst#go_binary

Tests to ensure that cross compilation is working as expected.

.. contents::

cross_test
----------

Tests that cross compilation controlled by the goos and goarch attributes on a go_binary_ produces
executables of the correct type.
This builds binaries using `main.go <main.go>`_ in multiple configurations, and then passes them as data to a
test `written in go <cross_test.go>`_.
The test executes the unix command "file" on the binaries to determine their type, and checks
they were built for the expected architecture.
