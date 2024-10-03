#!/usr/bin/python3

import boto3

# delete an object from s3 using boto3
s3 = boto3.client('s3')
response = s3.delete_object(
    Bucket='ds2022-resources',
    Key='key-bundle.tar.gz'
)

print(response)