#!/bin/bash

curl https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tsv

awk '!/^[[:space:]]*$/' lab3-bundle.tar.gz

awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' lab3-bundle.tar.gz > lab3-bundle.tar.gz.csv

linecount=$(wc - l lab3-bundle.tar.gz.csv)
echo "The number of lines in the .csv file is $linecount."

tar -cvf converted-archive.tar.gz lab3-bundle.tar.gz.csv
