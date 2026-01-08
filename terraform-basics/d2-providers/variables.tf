variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "ami_id" {
    type=string
    default = "ami-020cba7c55df1f615"  
}

variable "region" {
    type=string
    default = "us-east-1"  
}

output "public_ip" {
    description = "Public IP of the ec2-instance"
    value = aws_instance.var-instance.public_ip
}