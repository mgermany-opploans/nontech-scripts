#!/bin/bash

export AWS_PROFILE=nontech
export AWS_REGION=us-east-1

set -x

USERNAME=$1


aws ec2-instance-connect send-ssh-public-key --region us-east-1 --instance-id i-05546546602ee68a3 --availability-zone us-east-1c --instance-os-user ${USERNAME} --ssh-public-key file://./${USERNAME}_claritydirectmail.pub


ssh -i ./${USERNAME}_claritydirectmail ${USERNAME}@i-05546546602ee68a3 -p 22099


