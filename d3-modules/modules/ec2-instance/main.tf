provider "aws" {
    region = var.region
  
}

resource "aws_instance" "module-instance" {
    ami = var.ami_value
    instance_type = var.instance_type
}