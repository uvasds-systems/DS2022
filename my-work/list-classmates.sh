#!/bin/bash

# if there is an error, stop running 
set -e

# move into the people dir
cd ../people

# the file we want to look for
target_file="README.md"

# loop through the dirs and find the target file
for dir in $( find . -type d ); do
  if [ -f "$dir/$target_file" ]; then
	# echo "$dir/$target_file";
	name=`head -n 1 "$dir/$target_file"`; 
	echo $name;
  fi
done
