terraform {
  backend "s3" {
    bucket         = "bucket-alex-4112"
    region         = "eu-north-1"
    key            = "alex/terraform.tfstate"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}