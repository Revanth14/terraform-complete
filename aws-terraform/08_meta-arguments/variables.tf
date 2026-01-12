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

variable "bucket_names"{
    description = "Names of buckets"
    type = list(string)
    default = [ "rev-unique-23423223","nnefrh-344230nn4","ndhggs0348-343-44" ]
}