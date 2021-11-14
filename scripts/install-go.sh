#!/bin/bash
set -e
./scripts/check-root.sh

source ./scripts/add-to-path.sh
GO_VERSION=1.17.3

if go version ; then
  echo golang already exists
  exit 0
else
  echo Installing go...
  ## ref: https://golang.org/doc/install
  os=linux-amd64
  tarname=go${GO_VERSION}.${os}.tar.gz
  wget https://golang.org/dl/${tarname}
  tar -C /usr/local -xzf ${tarname}
  rm -f ${tarname} 
fi
