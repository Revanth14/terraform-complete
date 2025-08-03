provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "state-instance" {
    ami = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"
  
}

resource "aws_s3_bucket" "remote-bucket" {
    bucket = "rev-backend-terraform-2392"
}

resource "aws_dynamodb_table" "remote-lock-table" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}