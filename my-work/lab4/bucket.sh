#!/bin/bash

curl https://royvon.co.uk/wp-content/uploads/2021/10/Our-Story-About-Royvon-1.jpg > dog.jpg

aws s3 cp dog.jpg s3://ds2022-eme4de 

aws s3 presign --expires-in 604800 s3://ds2022-eme4de/dog.jpg

https://ds2022-eme4de.s3.us-east-1.amazonaws.com/dog.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAUPMYNIILKRYU3I6O%2F20241003%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241003T184532Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=5e690df66c9db1e3a2eee3be0aace9517d6624cd38c21443e1fb1c710c85a3c1

