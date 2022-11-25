resource "aws_instance" "ec2-web" {
    ami = "ami-074dc0a6f6c764218"
    instance_type = var.instance_type_list[0]  # For List
    #key_name = var.aws_key_pair
    vpc_security_group_ids =  [ aws_security_group.allow_http.id, aws_security_group.allow_ssh.id ]
    user_data = file("${path.module}/app1.install.sh")
    user_data_replace_on_change = true
    for_each = toset(keys({ for az, i in data.aws_ec2_instance_type_offerings.supported-az: az => i.instance_types if length(i.instance_types) !=0 }))
    availability_zone = each.key
    tags = {
      "Name" = "For-each-demo-${each.key}"
    }
  
}