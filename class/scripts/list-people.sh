#!/bin/bash

cd ../../people/

# Specify the directory to start searching from
# base_directory="people/"

# Specify the file to search for
target_file="README.md"

# Loop through all directories and subdirectories
for dir in $(find . -type d); do
  # Check if the target file exists in the current directory
  if [ -f "$dir/$target_file" ]; then
    # Read the file
    # echo "Reading $dir/$target_file:"
    # cat "$dir/$target_file"
    name=`head -n 1 "$dir/$target_file"`
    # name=`echo $name | sed 's/# //g'`
    name=`echo $name | sed 's/^#*//'`
    echo $name
    echo "---------------------"
    echo "- [$name]($dir/)" >> README.md
  fi
done
