terraform {
  required_version = "<= 0.12.23"

  backend "s3" {
    bucket         = "tf-state-temp"
    key            = "tf-repo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-state-temp-lock"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "2.53.0"
}
