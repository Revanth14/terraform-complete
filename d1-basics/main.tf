provider "aws" {
  region = "us-east-1" // Setting desired region
}

resource "aws_instance" "first-instance" {
  ami           = "ami-020cba7c55df1f615" // mandatory
  instance_type = "t2.micro"              //mandatory
}