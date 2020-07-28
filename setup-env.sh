echo "Setting environment variables for Terraform"
export ARM_CLIENT_ID="<Your SP ID>"
export ARM_CLIENT_SECRET="<Your SP Password>"
export ARM_TENANT_ID="<Your Tenant ID>"


# aAUS
export AZURE_SUBSCRIPTION=<my sub>>
export AZURE_RESOURCE_GROUP=<my rg>

./az2tf.sh -s ${AZURE_SUBSCRIPTION} -g ${AZURE_RESOURCE_GROUP}
