#!/bin/bash
s3_bucket='gr-quickstart-reference'
s3_bucket_prefix='cloudera/latest'
cp_option='--recursive --acl public-read --exclude "*.DS_Store"'

# remove old
aws s3 rm s3://${s3_bucket}/${s3_bucket_prefix} --recursive
aws s3 rm s3://${s3_bucket}/scripts --recursive
aws s3 rm s3://${s3_bucket}/media --recursive

# add new
aws s3 cp templates s3://${s3_bucket}/${s3_bucket_prefix}/templates/ ${cp_option}
aws s3 cp scripts s3://${s3_bucket}/${s3_bucket_prefix}/scripts/ ${cp_option}
aws s3 cp submodules s3://${s3_bucket}/${s3_bucket_prefix}/submodules/ ${cp_option}
aws s3 cp media s3://${s3_bucket}/${s3_bucket_prefix}/media/ ${cp_option}
