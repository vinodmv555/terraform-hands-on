# AMI ID
output "ami_id" {
  description = "AMI ID from data source"
  value = data.aws_ami.amazon-ami.id
}

# EC2 Public IP
output "ec2_public_ip" {
    description = "Web Server Pubilc IP"
    value = aws_instance.ec2-web.public_ip
}

# EC2 Public DNS
output "ec2_public_dns" {
   description = "Web Server Public DNS"
   value = aws_instance.ec2-web.public_dns
}