#!/bin/bash

sudo apt install awscli -y
aws configure  # Configure AWS access and secret keys.

#List the contents of an S3 bucket:
aws s3 ls

#Use cut to extract specific fields:
aws s3 ls | cut -d ' ' -f1,2,3

#Use awk for more complex field manipulation:
aws s3 ls | awk -F " " '{print $3,$2,$1}'

#Use grep to find specific patterns:
aws s3 ls | grep -E ^www[-]

#Shell Script Example: get_bucket.sh
aws s3 ls | cut -d ' ' -f 3 | grep -E ^www[-]
echo "Hello Saikiran, welcome to DevSecOps!"

#How to execute?
chmod +x get_bucket.sh
./get_bucket.sh

#Note: Do not use chmod 777 as it grants full permissions to everyone, which is a security risk. 
#Use chmod 700 instead to restrict access to the owner.

#To enable debugging in a script:
set -x  # Enable debugging