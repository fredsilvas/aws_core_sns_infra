##############################################################################################
### PROVIDER
terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.31.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "~> 1.2"
    }
  }
}


provider "aws" {
  region = var.aws_region
}