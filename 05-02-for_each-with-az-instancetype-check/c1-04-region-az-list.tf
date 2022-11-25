data "aws_availability_zones" "azs-list" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

data "aws_ec2_instance_type_offerings" "supported-az" {
  for_each = toset(data.aws_availability_zones.azs-list.names)
  filter {
    name   = "instance-type"
    values = ["t2.micro"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}


output "supported-azs-list" {
  #value = data.aws_ec2_instance_type_offerings.example.instance_types
  value = [for i in data.aws_ec2_instance_type_offerings.supported-az: i.instance_types]
}

output "supported-azs-v1" {
  value = { for az1, i in data.aws_ec2_instance_type_offerings.supported-az: az1 => i.instance_types}
}

output "supported-azs-v2" {
  value = { for az, i in data.aws_ec2_instance_type_offerings.supported-az: az => i.instance_types if length(i.instance_types) !=0 }
}

output "supported-azs-v3" {
   value = keys({ for az, i in data.aws_ec2_instance_type_offerings.supported-az: az => i.instance_types if length(i.instance_types) !=0 })
}


