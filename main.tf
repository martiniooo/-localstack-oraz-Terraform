provider "aws" {
  region                      = "us-east-1"
  access_key                  = "fake_access_key"
  secret_key                  = "fake_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

