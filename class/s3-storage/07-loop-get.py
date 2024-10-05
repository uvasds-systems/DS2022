#!/usr/bin/env python3

import boto3

s3 = boto3.client('s3')
bucket = "ds2022-resources"

def get_value_out_of_json_file(file):
    with open(file, 'r') as f:
        print(f.read())

def download_files_from_s3_by_key(bucket, key):
    s3.download_file(bucket, key, key)
    get_value_out_of_json_file(key)

def list_files_in_s3_bucket_one_by_one(bucket):
    response = s3.list_objects_v2(Bucket=bucket)
    for obj in response['Contents']:
        print(obj['Key'])
        key = obj['Key']
        download_files_from_s3_by_key(bucket, key)

list_files_in_s3_bucket_one_by_one(bucket)

    