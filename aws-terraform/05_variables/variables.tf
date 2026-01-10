variable "ami-value" {
  type = string
  default = "ami-020cba7c55df1f615"
}

variable "instance-type" {
    type = string
    default = "t2.micro"
  
}

variable "region" {
  default = "us-east-1"
  type = string
}

variable "environment"{
    default = "dev-environment-232"
    type = string
}