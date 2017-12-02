#!/bin/bash

current_dir=$(pwd)
target_dir=$(mktemp -d)

mkdir -p $target_dir

echo "Target directory $target_dir"

# Copy all relevant files
cp -r node_modules "$target_dir/node_modules"

for f in $(git ls-tree -r master --name-only); do
    cp -r --parents $f $target_dir
done

# Distribution for linux
target_dir_linux=$(mktemp -d)
echo "Target directory for linux $target_dir_linux"

mkdir -p "$target_dir_linux/resources/app"
cp -r $target_dir/* "$target_dir_linux/resources/app"
cp -r electron-linux-x64/* $target_dir_linux
cp -r ffmpeg-linux-x64 $target_dir_linux/resources/app

cd $target_dir_linux
rm $current_dir/pcago_electron_linux-x64.zip
zip -r $current_dir/pcago_electron_linux-x64.zip .
cd $current_dir
