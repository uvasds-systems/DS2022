#!/bin/bash

#fetching tarball
wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

#decompress archive
tar -xzvf lab3-bundle.tar.gz

#removing empty rows
cat lab3-bundle.tsv | tr -s '\n' > lab3-bundle.tsv

#comma format
sed 's/'$'\t''/,/g' lab3-bundle.tsv > lab3-bundle.csv

#count lines
line_count=wc -l lab3-bundle.csv
echo line_count -1

#create new tarball
tar -czvf converted-archive.tar.gz lab3-bundle.csv
