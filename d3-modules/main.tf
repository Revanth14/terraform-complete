provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
  source = "./modules/ec2-instance"
  ami_value= "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
}

module "aws_s3_bucket" {
    source = "./modules/s3-bucket"
  
}

output "test" {
  description = "test s3"
  value=module.aws_s3_bucket.bucket-name
}

output "id" {
  description = "publc ip"
  value = module.ec2-instance.public_ip
}