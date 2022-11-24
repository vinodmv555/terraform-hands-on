resource "aws_instance" "ec2-web" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = var.instance_type
    key_name = var.aws_keypair
    vpc_security_group_ids =  [ aws_security_group.allow_http.id, aws_security_group.allow_ssh.id ]
    user_data = file("${path.module}/app1.install.sh")
    user_data_replace_on_change = true
    tags = local.common_tags
  
}