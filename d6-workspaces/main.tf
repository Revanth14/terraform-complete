provider "aws" {
  region = "us-east-1"

}

variable "ami" {
  description = "AMI value"
  default     = "ami-020cba7c55df1f615"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"

}

module "ec2-instance" {
  source        = "./modules/ec2-instance"
  ami           = var.ami
  instance_type = var.instance_type

}