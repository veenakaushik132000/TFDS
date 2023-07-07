# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = "3932072"
  api_key = "NRAK-4YN0QHGOUUO8P4FMV124O5Z2U4O"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}