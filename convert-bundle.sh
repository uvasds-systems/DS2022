#!/bin/bash

tr '\t' ',' < lab3_data.tsv > lab3_data.csv

line_count=$(( $(tail -n +2 lab3_data.csv | wc -l) -1))

echo "Number of data lines excluding header: $line_count"

tar -czf converted-archive.tar.gz lab3_data.csv

echo "Converted tarball created: converted-archive.tar.gz"
