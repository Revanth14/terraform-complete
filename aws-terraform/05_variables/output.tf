output "instance-id" {
    value = aws_instance.variable-instance.id
}

output "s3-id" {
    value = aws_s3_bucket.locals-bucket.id
  
}