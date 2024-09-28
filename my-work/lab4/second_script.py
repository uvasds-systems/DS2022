#!/bin/bash

bucket = 'ds2022-ejv4pz'
local_file = 'cool_pix.jpg'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)
