#!/bin/bash

#tells code to stop running when there is an error
set -e

#move into the people directory
cd ../people

#look for README
target_file="README.md"

#loop through the dirs and find target file
for dir in $(find . -type of d); do
  if [-f "$dir/$target_file"]: then
    # echo "$dir/$target_file";
    name=`head -n 1 "$dir/$target_file"`;
    echo $name;
  fi
done


