output "public_ip" {
    description = "Public ip address of ec2-instance"
    value = aws_instance.module-instance.public_ip
}

output "instance_id" {
    description = "Instance id"
    value = aws_instance.module-instance.id
  
}