#!/bin/python3

import boto3
import os

s3 = boto3.client('s3', region_name='us-east-1')

bucket = 'ds2022-ejv4pz'
local_file = 'deng2.jpg'
file_name = 'deng2.jpg' 
expires_in = 604800  # 7 days

os.makedirs(os.path.dirname(local_file), exist_ok=True)

with open(local_file, 'rb') as file:
    resp = s3.put_object(
        Body=file,
        Bucket=bucket,
        ACL='public-read',
        Key=file_name  
    )

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': file_name}, 
    ExpiresIn=expires_in
)

print("Presigned URL:", response)
