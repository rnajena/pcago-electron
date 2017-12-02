#!/bin/bash

target_dir=$(mktemp -d)
echo "Target directory $target_dir"

# Copy all relevant files
cp -r node_modules "$target_dir/node_modules"

for f in $(git ls-tree -r master --name-only); do
    cp -rv --parents $f $target_dir
done
