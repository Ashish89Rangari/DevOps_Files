terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# Configure the AWS provider

provider "aws" {
    region = "ap-south-1"        # Change the region according to you project
    profile = "Devops-user"      # You can provide your IAM user name
}