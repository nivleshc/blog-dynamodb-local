provider "aws" {
  region = "ap-southeast-2"

  access_key                  = "fakeAccessKeyId"
  secret_key                  = "fakeSecretAccessKey"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    dynamodb = "http://localhost:8000"
  }
}
