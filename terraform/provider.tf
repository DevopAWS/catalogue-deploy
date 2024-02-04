terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket         = "daws76-state-dev"
    key            = "catalogue"
    region         = "us-east-1"
    dynamodb_table = "daws76-locking-dev"

  }
}
provider "aws" {
  region = "us-east-1"
}

