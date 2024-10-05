#!/bin/bash

curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz


tar -xzf lab3-bundle.tar.gz


awk '!/^[[:space:]]*$/' myfile.tsv > cleaned_file.tsv


tr '\t' ',' < cleaned_file.tsv > myfile.csv


line_count=$(tail -n +2 myfile.csv | wc -l)
echo "Number of rows of data is:  $line_count"

tar -czf converted-archive.tar.gz myfile.csv


