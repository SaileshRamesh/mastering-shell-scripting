#This script demonstrates the use of special parameters and error handling by 
#checking the AWS CLI version before proceeding to retrieve VPC details.

#!/bin/bash

# Suppress AWS CLI version output
aws --version > /dev/null 2>&1

# Check if the previous command was successful
if [ $? -eq 0 ]; then
    REGIONS=$@
    echo "Fetching VPC IDs for regions: $REGIONS"
    for REGION in $REGIONS; do
        aws ec2 describe-vpcs --region ${REGION} | jq ".Vpcs[].VpcId" -r
    done
else 
    echo "Incorrect AWS command. Please check your AWS CLI installation."
    exit 1
fi


#Running 01-error-handling.sh
#Retrieve VPC IDs from one or multiple AWS regions.

./get_vpc.sh us-east-1 ap-south-1 us-east-2

#Output:
vpc-0abcd1234efgh5678
vpc-1bcde2345fghij678