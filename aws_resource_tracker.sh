#!/bin/bash




#####################################################
# Author: Akshit Saxena
# Date: 30th-March-2024
# 
# Version: v1
# This script will report the AWS resource usage
####################################################


# AWS s3
# AWS ec2
# AWS Lambda
# AWS IAM Users


# Debugging the script
set -x

# list s3 buckets
echo "Print the list of s3 buckets"
aws s3 ls >> resourceTracker

# list ec2 instances
echo "Print the list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print the list of lambda functions"
aws lambda list-functions >> resourceTracker

# list IAM Users
echo "Print the list of IAM users"
aws iam list-users







