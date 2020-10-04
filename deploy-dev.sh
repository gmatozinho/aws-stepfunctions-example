#!/bin/bash

set -e

aws-vault exec "aws-profile" --no-session -- sam package --s3-bucket "bucket-name" --template-file cloudformation/pipeline.yaml
aws-vault exec "aws-profile" --no-session -- sam deploy --s3-bucket "bucket-name" --stack-name "stack-name" \
  --template-file cloudformation/pipeline.yaml --capabilities CAPABILITY_IAM 
