#!/bin/bash

electron_target_dir=$(mktemp -d)
target_dir="$electron_target_dir/electron/resources/app"

mkdir -p $target_dir

echo "Target directory $electron_target_dir"

# Copy all relevant files
cp -r node_modules "$target_dir/node_modules"

for f in $(git ls-tree -r master --name-only); do
    cp -rv --parents $f $target_dir
done
