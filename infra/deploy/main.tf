terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket               = "saul-devops-recipe-app-tf-state"
    key                  = "tf-state-deploy"
    workspace_key_prefix = "tf-state-deploy-env"
    region               = "us-west-1"
    encrypt              = true
    dynamodb_table       = "saul-devops-recipe-app-tf-lock"
  }
}

provider "aws" {
  region = "us-west-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/deploy"
    }
  }
}

# locals are local variables, which can be
# dynamically created based env variables
# or other ones
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

data "aws_region" "current" {

}