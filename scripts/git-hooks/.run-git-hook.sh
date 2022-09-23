#!/bin/sh

gitroot=$(git rev-parse --show-toplevel)
hook_name=$1
shared_hook_path="$gitroot/scripts/git-hooks/$hook_name"

# run the executable file by the input name in this repo's shared git hook dir
if [ -f $shared_hook_path ]
then
    . $shared_hook_path
else
    echo "WARNING: attempted to run $shared_hook_path but file is missing"
fi
