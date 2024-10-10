#!/bin/bash

clear
read -p "Give me a png image url: " IMAGE
read -p "Enter a name for the image file (formatted as image_name.png): " NAME

curl $IMAGE > $NAME
aws s3 cp "${NAME}" s3://ds2022-ejv4pz/

#link expires in 7 days
the_link=$(aws s3 presign --expires-in 604800 "s3://ds2022-ejv4pz/$NAME")
echo "The file has been uploaded to my bin. Here is the link: " $the_link


# https://ds2022-ejv4pz.s3.amazonaws.com/moo_peng.png?AWSAccessKeyId=AKIA6ELKOJUI37Z7MFGA&Signature=4fCIFqrobcx0H1uYpRhJmlU8dgc=&Expires=1727462806
