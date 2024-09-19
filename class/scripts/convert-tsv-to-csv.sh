#!/bin/bash

# Convert Delimiters
# To convert TSV to CSV, or vice versa, use a text search+replace
# function such as `awk`, `tr`, or a good IDE/text editor:

# Use `tr` - "translate"
tr '\t' ',' < file.tsv > file.csv

# Use `sed` - "stream editor"
sed 's/'$'\t''/,/g' file.tsv > file.csv

# Use `awk` - "pattern scanning and processing language"
awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' file.tsv > file.csv

