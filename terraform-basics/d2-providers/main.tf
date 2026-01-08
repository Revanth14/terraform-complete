// Multi-region
 /* provider "aws" {
     alias = "us-east-1"
     region = "us-east-1"
  
 } */

provider "aws" {
    region = var.region
}

resource "aws_instance" "var-instance" {
    ami = var.ami_id
    instance_type = var.instance_type
  
}