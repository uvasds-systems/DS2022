#!/usr/bin/env python3

import boto3
import os

# write boto3 function to upload an object to a bucket
def upload_object(bucket_name, file_name, key):
    s3 = boto3.client('s3')
    response = s3.upload_file(file_name, 
                   bucket_name, 
                   key)
    print(f'{file_name} uploaded to {bucket_name}')
    print(response)

# call the function and pass the bucket name and file name
upload_object('ds2022-resources', 's3-storage/bundle.tar.gz', 'key-bundle.tar.gz')
