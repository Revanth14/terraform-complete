variable "ami" {
default = "ami-020cba7c55df1f615"
type = string
}

variable "instance_type" {
    default = "t2.micro"
    type = string
  
}

variable "region"{
    default = "us-east-1"
    type = string
}