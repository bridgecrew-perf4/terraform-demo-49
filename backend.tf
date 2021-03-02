provider "aws" {
  shared_credentials_file = "auth"
  profile                 = "aws-prod"
  region                  = "us-east-1"
}



terraform {
  required_providers {
    aws = "< 3.0"
  }
  backend "s3" {
    shared_credentials_file = "auth"
    profile                 = "s3_dynamodb"
    bucket         = "terraform-up-and-running-state-eager-1"
    key            = "vpc/876757397215/us-east-1/vpc-us-east-1-5b6b1ef8-7b05-11eb-8592-0e2cfa51bbd7.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks_eager"
    encrypt        = true
  }
}