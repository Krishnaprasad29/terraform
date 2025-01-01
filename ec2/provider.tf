terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws78-s3-bucket"
    key    = "ec2-module-test"
    region = "us-east-1"
    dynamodb_table = "daws78-dynamo"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}