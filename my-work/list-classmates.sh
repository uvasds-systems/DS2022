#!/bin/bash

set -e
#move into the people directory
cd ../people

#look for readme
target_file="README.md"

#loop through the directories and find the target file
for dir in $( find . -type d); do 
  if [ -f "$dir/$target_file" ]; then 
    echo "$dir/$target_file"]
    name=`head -n 1 "$dir/$target_file"` #the two back ticks means to run a command
    echo $name;
  fi  #this ends the conditional 
done #this ends the loop
