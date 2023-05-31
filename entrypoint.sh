#!/bin/bash

# Assuming directories are passed as command line arguments
for dir in "$@"; do
    if [ -d "${dir}" ]; then
        echo "Running wire on ${dir}"
        wire ${dir}/...
    else
        echo "${dir} is not a directory"
    fi
done
