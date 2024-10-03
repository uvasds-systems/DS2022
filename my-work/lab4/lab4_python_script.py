bucket = 'ds2022-mst3k'
local_file = 'project/vuelta.jpg'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)
