#!/bin/bash

# Read the directories JSON array from the input and convert it to a list
directories=$(echo "$1" | jq -r '.[]')

# Iterate over the directories
for dir in $directories; do
    if [ -d "${dir}" ]; then
        echo "Running wire on ${dir}"
        wire ${dir}/...
    else
        echo "${dir} is not a directory"
    fi
done
