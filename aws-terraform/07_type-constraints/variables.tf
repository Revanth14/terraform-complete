variable "ami" {
default = "ami-020cba7c55df1f615"
type = string
}

variable "instance_type" {
    default = "t2.micro"
    type = string
  
}

variable "allowed_instance_types" {
  description = "List of allowed instance types"
  type = list(string)
  default = [ "t2.micro","t2.small","t3.small" ]
}