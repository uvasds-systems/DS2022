#!/usr/bin/python3
 
import urllib.request
import boto3

url = 'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png'

bucket = 'ds2022-eme4de'
expires_in = 604800

urllib.request.urlretrieve(url, 'flowers.jpg')

local_file = 'flowers.jpg'
object_name = 'flowers.jpg'

s3 = boto3.client('s3', region_name="us-east-1")

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file,
    ACL = 'public-read'
)

s3.upload_file(local_file, bucket, object_name)

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': object_name},
    ExpiresIn=expires_in
)

print(response)

#https://ds2022-eme4de.s3.amazonaws.com/flowers.jpg?AWSAccessKeyId=AKIAUPMYNIILKRYU3I6O&Signature=6mYO61IiQLzGFokAUSW0SyyJt4c%3D&Expires=1728595188
