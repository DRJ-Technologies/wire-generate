#!/bin/bash

if [ -d $@ ]; then
    echo "Running wire on $@"
    wire -buildvcs=false  $@/...
else
    echo "$@ is not a directory"
fi
