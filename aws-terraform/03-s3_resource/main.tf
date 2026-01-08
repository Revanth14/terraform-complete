terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"

    }
  }
}
provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "new_bucker" {
  bucket = "aws-testbuck-34534"

  tags = {
    Name = "My Bucket"
  }

}