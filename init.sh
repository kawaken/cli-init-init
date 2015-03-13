#!/bin/bash

export GOPATH=`pwd`
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

mkdir {src,bin,pkg}

go get -d github.com/tcnksm/cli-init
go get github.com/codegangsta/cli

cd src/github.com/tcnksm/cli-init/
make install

cd -
cd src

echo "cli-init app_name"
