Popular repository tests
========================

These tests are designed to check that gazelle and rules_go together can cope
with a list of popluar repositories people depend on.

It helps catch changes that might break a large number of users.

.. contents::

org_golang_x_crypto
___________________

This runs tests from the repository `golang.org/x/crypto <https://golang.org/x/crypto>`_

* @org_golang_x_crypto//acme:go_default_test
* @org_golang_x_crypto//acme/autocert:go_default_test
* @org_golang_x_crypto//acme/autocert:go_default_xtest
* @org_golang_x_crypto//bcrypt:go_default_test
* @org_golang_x_crypto//blake2b:go_default_test
* @org_golang_x_crypto//blake2s:go_default_test
* @org_golang_x_crypto//blowfish:go_default_test
* @org_golang_x_crypto//bn256:go_default_test
* @org_golang_x_crypto//cast5:go_default_test
* @org_golang_x_crypto//chacha20poly1305:go_default_test
* @org_golang_x_crypto//chacha20poly1305/internal/chacha20:go_default_test
* @org_golang_x_crypto//cryptobyte:go_default_test
* @org_golang_x_crypto//cryptobyte:go_default_xtest
* @org_golang_x_crypto//curve25519:go_default_test
* @org_golang_x_crypto//ed25519:go_default_test
* @org_golang_x_crypto//hkdf:go_default_test
* @org_golang_x_crypto//hkdf:go_default_xtest
* @org_golang_x_crypto//md4:go_default_test
* @org_golang_x_crypto//md4:go_default_xtest
* @org_golang_x_crypto//nacl/auth:go_default_test
* @org_golang_x_crypto//nacl/auth:go_default_xtest
* @org_golang_x_crypto//nacl/box:go_default_test
* @org_golang_x_crypto//nacl/box:go_default_xtest
* @org_golang_x_crypto//nacl/secretbox:go_default_test
* @org_golang_x_crypto//nacl/secretbox:go_default_xtest
* @org_golang_x_crypto//ocsp:go_default_test
* @org_golang_x_crypto//openpgp:go_default_test
* @org_golang_x_crypto//openpgp/armor:go_default_test
* @org_golang_x_crypto//openpgp/clearsign:go_default_test
* @org_golang_x_crypto//openpgp/elgamal:go_default_test
* @org_golang_x_crypto//openpgp/packet:go_default_test
* @org_golang_x_crypto//openpgp/s2k:go_default_test
* @org_golang_x_crypto//otr:go_default_test
* @org_golang_x_crypto//pbkdf2:go_default_test
* @org_golang_x_crypto//pkcs12:go_default_test
* @org_golang_x_crypto//pkcs12/internal/rc2:go_default_test
* @org_golang_x_crypto//poly1305:go_default_test
* @org_golang_x_crypto//ripemd160:go_default_test
* @org_golang_x_crypto//salsa20:go_default_test
* @org_golang_x_crypto//salsa20/salsa:go_default_test
* @org_golang_x_crypto//scrypt:go_default_test
* @org_golang_x_crypto//sha3:go_default_test
* @org_golang_x_crypto//ssh:go_default_xtest
* @org_golang_x_crypto//ssh/agent:go_default_xtest
* @org_golang_x_crypto//ssh/knownhosts:go_default_test
* @org_golang_x_crypto//ssh/terminal:go_default_test
* @org_golang_x_crypto//tea:go_default_test
* @org_golang_x_crypto//twofish:go_default_test
* @org_golang_x_crypto//xtea:go_default_test
* @org_golang_x_crypto//xts:go_default_test


org_golang_x_net
________________

This runs tests from the repository `golang.org/x/net <https://golang.org/x/net>`_

* @org_golang_x_net//bpf:go_default_xtest
* @org_golang_x_net//context:go_default_test
* @org_golang_x_net//context:go_default_xtest
* @org_golang_x_net//context/ctxhttp:go_default_test
* @org_golang_x_net//dns/dnsmessage:go_default_test
* @org_golang_x_net//dns/dnsmessage:go_default_xtest
* @org_golang_x_net//html:go_default_test
* @org_golang_x_net//html:go_default_xtest
* @org_golang_x_net//html/atom:go_default_test
* @org_golang_x_net//http2/hpack:go_default_test
* @org_golang_x_net//icmp:go_default_test
* @org_golang_x_net//idna:go_default_test
* @org_golang_x_net//idna:go_default_xtest
* @org_golang_x_net//internal/socket:go_default_xtest
* @org_golang_x_net//internal/timeseries:go_default_test
* @org_golang_x_net//ipv4:go_default_test
* @org_golang_x_net//ipv4:go_default_xtest
* @org_golang_x_net//ipv6:go_default_xtest
* @org_golang_x_net//lex/httplex:go_default_test
* @org_golang_x_net//netutil:go_default_test
* @org_golang_x_net//proxy:go_default_test
* @org_golang_x_net//publicsuffix:go_default_test
* @org_golang_x_net//trace:go_default_test
* @org_golang_x_net//webdav:go_default_test
* @org_golang_x_net//webdav/internal/xml:go_default_test
* @org_golang_x_net//webdav/internal/xml:go_default_xtest
* @org_golang_x_net//websocket:go_default_test
* @org_golang_x_net//websocket:go_default_xtest
* @org_golang_x_net//xsrftoken:go_default_test


org_golang_x_sys
________________

This runs tests from the repository `golang.org/x/sys <https://golang.org/x/sys>`_

* @org_golang_x_sys//plan9:go_default_xtest
* @org_golang_x_sys//unix:go_default_test
* @org_golang_x_sys//windows:go_default_xtest
* @org_golang_x_sys//windows/registry:go_default_test
* @org_golang_x_sys//windows/registry:go_default_xtest
* @org_golang_x_sys//windows/svc:go_default_xtest
* @org_golang_x_sys//windows/svc/eventlog:go_default_xtest
* @org_golang_x_sys//windows/svc/mgr:go_default_xtest


org_golang_x_text
_________________

This runs tests from the repository `golang.org/x/text <https://golang.org/x/text>`_

* @org_golang_x_text//cases:go_default_test
* @org_golang_x_text//cases:go_default_xtest
* @org_golang_x_text//collate:go_default_test
* @org_golang_x_text//collate:go_default_xtest
* @org_golang_x_text//collate/build:go_default_test
* @org_golang_x_text//currency:go_default_test
* @org_golang_x_text//currency:go_default_xtest
* @org_golang_x_text//encoding:go_default_xtest
* @org_golang_x_text//encoding/htmlindex:go_default_test
* @org_golang_x_text//encoding/ianaindex:go_default_test
* @org_golang_x_text//encoding/ianaindex:go_default_xtest
* @org_golang_x_text//feature/plural:go_default_test
* @org_golang_x_text//feature/plural:go_default_xtest
* @org_golang_x_text//internal:go_default_test
* @org_golang_x_text//internal/catmsg:go_default_test
* @org_golang_x_text//internal/colltab:go_default_test
* @org_golang_x_text//internal/colltab:go_default_xtest
* @org_golang_x_text//internal/export/idna:go_default_test
* @org_golang_x_text//internal/export/idna:go_default_xtest
* @org_golang_x_text//internal/number:go_default_test
* @org_golang_x_text//internal/stringset:go_default_test
* @org_golang_x_text//internal/tag:go_default_test
* @org_golang_x_text//internal/triegen:go_default_xtest
* @org_golang_x_text//internal/ucd:go_default_test
* @org_golang_x_text//internal/ucd:go_default_xtest
* @org_golang_x_text//language:go_default_test
* @org_golang_x_text//language:go_default_xtest
* @org_golang_x_text//language/display:go_default_test
* @org_golang_x_text//language/display:go_default_xtest
* @org_golang_x_text//message:go_default_test
* @org_golang_x_text//message:go_default_xtest
* @org_golang_x_text//message/catalog:go_default_test
* @org_golang_x_text//number:go_default_test
* @org_golang_x_text//number:go_default_xtest
* @org_golang_x_text//runes:go_default_test
* @org_golang_x_text//runes:go_default_xtest
* @org_golang_x_text//search:go_default_test
* @org_golang_x_text//secure/bidirule:go_default_test
* @org_golang_x_text//secure/precis:go_default_test
* @org_golang_x_text//transform:go_default_test
* @org_golang_x_text//transform:go_default_xtest
* @org_golang_x_text//unicode/bidi:go_default_test
* @org_golang_x_text//unicode/cldr:go_default_test
* @org_golang_x_text//unicode/cldr:go_default_xtest
* @org_golang_x_text//unicode/norm:go_default_test
* @org_golang_x_text//unicode/norm:go_default_xtest
* @org_golang_x_text//unicode/rangetable:go_default_test
* @org_golang_x_text//unicode/runenames:go_default_test
* @org_golang_x_text//unicode/runenames:go_default_xtest
* @org_golang_x_text//width:go_default_test
* @org_golang_x_text//width:go_default_xtest


org_golang_x_tools
__________________

This runs tests from the repository `golang.org/x/tools <https://golang.org/x/tools>`_

* @org_golang_x_tools//benchmark/parse:go_default_test
* @org_golang_x_tools//cmd/benchcmp:go_default_test
* @org_golang_x_tools//cmd/callgraph/testdata/src/pkg:go_default_test
* @org_golang_x_tools//cmd/digraph:go_default_test
* @org_golang_x_tools//cmd/getgo:go_default_test
* @org_golang_x_tools//cmd/go-contrib-init:go_default_test
* @org_golang_x_tools//cmd/guru:go_default_test
* @org_golang_x_tools//cmd/tip:go_default_test
* @org_golang_x_tools//container/intsets:go_default_test
* @org_golang_x_tools//go/ast/astutil:go_default_test
* @org_golang_x_tools//go/ast/astutil:go_default_xtest
* @org_golang_x_tools//go/callgraph/static:go_default_xtest
* @org_golang_x_tools//go/pointer:go_default_test
* @org_golang_x_tools//go/types/typeutil:go_default_xtest
* @org_golang_x_tools//go/vcs:go_default_test
* @org_golang_x_tools//godoc:go_default_test
* @org_golang_x_tools//godoc/redirect:go_default_test
* @org_golang_x_tools//godoc/vfs:go_default_xtest
* @org_golang_x_tools//godoc/vfs/mapfs:go_default_test
* @org_golang_x_tools//godoc/vfs/zipfs:go_default_test
* @org_golang_x_tools//imports:go_default_test
* @org_golang_x_tools//playground/socket:go_default_test
* @org_golang_x_tools//present:go_default_test


org_golang_google_grpc
______________________

This runs tests from the repository `google.golang.org/grpc <https://google.golang.org/grpc>`_

* @org_golang_google_grpc//benchmark:go_default_test
* @org_golang_google_grpc//benchmark/latency:go_default_test
* @org_golang_google_grpc//grpclb:go_default_xtest
* @org_golang_google_grpc//grpclog:go_default_test
* @org_golang_google_grpc//metadata:go_default_test
* @org_golang_google_grpc//naming:go_default_test
* @org_golang_google_grpc//reflection:go_default_test
* @org_golang_google_grpc//stats:go_default_xtest
* @org_golang_google_grpc//status:go_default_test
* @org_golang_google_grpc//test/bufconn:go_default_test
* @org_golang_google_grpc//transport:go_default_test


com_github_mattn_go_sqlite3
___________________________

This runs tests from the repository `github.com/mattn/go-sqlite3 <https://github.com/mattn/go-sqlite3>`_

* @com_github_mattn_go_sqlite3//:go_default_test


