provider "aws" {
  shared_credentials_file = "auth"
  profile                 = "aws-prod"
  region                  = "ap-northeast-1"
}



terraform {
  required_providers {
    aws = "< 3.0"
  }
  backend "s3" {
    shared_credentials_file = "auth"
    profile                 = "s3_dynamodb"
    bucket         = "terraform-up-and-running-state-eager-1"
    key            = "vpc/876757397215/ap-northeast-1/scg-ap-northeast-1-demo.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks_eager"
    encrypt        = true
  }
}
