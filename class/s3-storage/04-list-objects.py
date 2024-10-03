#!/usr/bin/env python3

import boto3

# write boto3 function to list all objects in a bucket
def list_objects(bucket_name):
    s3 = boto3.client('s3')
    response = s3.list_objects_v2(Bucket=bucket_name)
    for obj in response['Contents']:
        print(obj['Key'])
    print(response)

# call the function and pass the bucket name
list_objects('ds2022-resources')