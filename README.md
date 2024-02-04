# pigotls

A **very** minimal Go binding for [picotls](https://github.com/h2o/picotls), a [TLS 1.3](https://tlswg.github.io/tls13-spec/) implementation written in C.
Its main intent is not to be a long-term stable API but a rather-quickly put together minimal toolbox for writing [IETF QUIC](https://quicwg.github.io/) clients.

## Installation

```
go get github.com/mpiraux/pigotls
cd $GOPATH/src/github.com/mpiraux/pigotls
make
```

# PS

Because of [limitations in the go get system](https://github.com/golang/go/issues/24094) _sigh_, we pull the picotls code out into the repo, keeping track of the commit in `PICOTLS_COMMIT`.
