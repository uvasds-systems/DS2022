#!/bin/bash


curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv > my_new_file.tsv

sed 's/'$'\t''/,/g' my_new_file.tsv > myfile.csv

WORDCOUNT=$(wc -l < myfile.csv)
LINECOUNT=$((WORDCOUNT - 1))

echo "Number of lines: $LINECOUNT"

tar -czf converted-archive.tar.gz myfile.csv
