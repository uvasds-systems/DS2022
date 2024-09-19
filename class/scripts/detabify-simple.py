#!/usr/bin/env python3

import csv

with open('input-file.tsv', 'r') as tsvfile:
    reader = csv.reader(tsvfile, delimiter='\t')
    with open('output-file.csv', 'w') as csvfile:
        writer = csv.writer(csvfile)
        for row in reader:
            writer.writerow(row)