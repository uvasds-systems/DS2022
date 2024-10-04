#!/bin/bash

curl https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv > my_file.tsv

awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' my_file.tsv > 
my_file.csv


linecount=$(wc - l my_file.csv)
echo "The number of lines in the .csv file is $linecount."

tar -cvf converted-archive.tar.gz my_file.csv

