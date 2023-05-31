#!/bin/bash

export GOFLAGS="-buildvcs=false"

if [ -d $@ ]; then
    echo "Running wire on $@"
    wire $@/...
else
    echo "$@ is not a directory"
fi
