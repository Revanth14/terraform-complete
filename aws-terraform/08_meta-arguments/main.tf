resource "aws_instance" "meta-instance" {
  ami = var.ami
  instance_type = var.instance_type
  count = 3
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_names[count.index]
    count = 3
    depends_on = [ aws_instance.meta-instance ]  
}