terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "saul-devops-recipe-app-tf-state"
    key            = "tf-state-setup"
    region         = "us-west-1"
    encrypt        = true
    dynamodb_table = "saul-devops-recipe-app-tf-lock"
  }
}

provider "aws" {
  region = "us-west-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
