mkdir $HOME/.aws

echo "[default]
aws_access_key_id="$1"
aws_secret_access_key="$2"" > $HOME/.aws/credentials

echo "[default]
region=eu-west-2
output=json" > $HOME/.aws/config

#test aws config
aws s3 ls s3://amazon-reviews-pds/tsv/