terraform {
#   backend "s3" {
#     bucket = "remote-bucket-rev-2324"
#     key    = "dev/terraform.tfstate"
#     region = "us-east-1"
#     encrypt = true
#     use_lockfile = true
#   }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "remote-bucket" {
    bucket = "remote-bucket-rev-2324"
    tags = {
      name = "remote-bucket"
    }
    force_destroy = true

}