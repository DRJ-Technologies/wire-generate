#!/bin/bash

if [ -d $@ ]; then
    echo "Running wire on $@"
    wire $@/...
else
    echo "$@ is not a directory"
fi
