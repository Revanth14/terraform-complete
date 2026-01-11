resource "aws_s3_bucket" "remote-bucket" {
    bucket = "remote-bucket-rev-2324"
    tags = {
      name = "remote-bucket"
    }
    force_destroy = true

}

resource "aws_instance" "constraint_instance" {

    ami = var.ami
    instance_type = var.allowed_instance_types[1]
  
}

resource "aws_instance" "micro-instance" {
    ami = var.ami
    instance_type = var.instance_type
}