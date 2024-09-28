#!/bin/bash

import boto3
import urllib.request

bucket = 'ds2022-ejv4pz'
local_file = 'moo_deng.png'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)
