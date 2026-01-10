resource "aws_instance" "variable-instance" {
  ami = var.ami-value
  instance_type = var.instance-type
}

resource "aws_s3_bucket" "locals-bucket" {
    bucket = local.bucket-name
    tags = {
      name = "Local"
    }
  
}