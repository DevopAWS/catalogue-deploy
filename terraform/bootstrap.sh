#!/bin/bash
component=$1
environment=$2
app_version=$3
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
ansible-pull -U https://github.com/DevopAWS/ansible-role-roboshop-tf.git -e component=$component -e env=$environment app_version=$app_version main-tf.yaml
