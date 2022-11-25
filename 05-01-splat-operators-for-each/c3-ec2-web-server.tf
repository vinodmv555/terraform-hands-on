resource "aws_instance" "ec2-web" {
    ami = "ami-0b0dcb5067f052a63"
    #instance_type = var.instance_type
    instance_type = var.instance_type_list[0]  # For List
    # instance_type = var.instance_type_map[dev] # For Map
    key_name = var.aws_key_pair
    vpc_security_group_ids =  [ aws_security_group.allow_http.id, aws_security_group.allow_ssh.id ]
    user_data = file("${path.module}/app1.install.sh")
    user_data_replace_on_change = true
    count = 2
    tags = {
      "Name" = "Demo-${count.index}"
    }
  
}