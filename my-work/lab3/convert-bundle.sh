#!/bin/bash

#download the tarball
#curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

#decompress the tarball
#tar -xzf lab3-bundle.tar.gz

#awk can remove space
#awk '!/^[[:space: ]]*$/' lab3_data.tsv

#convert from tsv to csv
#sed 's/\t/,/g' lab3_data.tsv › lab3_data.csv

#convert from tsv to csv(again)
#awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' lab3_data.tsv > lab3_data.csv

#count every line except from the first one
#Line=$(wc -l < lab3_data.csv)
#Line=$(($LINE -1))
#echo "The number of lines is $LINE"

#convert into a new tarball and fetch it
#tar -czf converted-archive.tar.gz lab3-bundle.csv

# new version down here

#download the data
curl -0 https://s3. amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

#decompress the tarball
tar -xzf lab3-bundle.tar.gz

#awk can remove spaces
awk '!/^[[:space:]]*$/' lab3_data.tsv

# convert from tsv to csv
sed 's/\t/,/g' lab3_data.tsv > lab3_data.csv

# count lines in file
line_count=$(wc -l < lab3_data.csv)
line_count=$(($line_count -1))
echo "The number of data lines is: $line_count"

# create a new tar file CSV file
tar -czf lab3-csv-bundle.tar.gz lab3_data.csv
