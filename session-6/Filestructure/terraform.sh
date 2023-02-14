#!/bin/bash
rm -rf .terraform
read -p "which environment would you like?" ENV
echo $ENV 
sed -i "s/_env_/$ENV/g" backend.tf
echo "Environment is set ot $ENV"

terraform init
terraform plan -var-file=$ENV.tfvars

terrafrom apply -var-file=$ENV.tfvars -auto-approve


echo "rolling back the backend"
sed -i "s/$ENV/_env_/g" backend.tf
echo "script ran successfully"

// 1. updating backend file
// 2. terraform init
// 3. terrafrom plan -var-files.tfvars
// 4. terraform apply