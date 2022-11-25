# Output with List - Public IP 
output "output_list_public_ip" {
  description = "Output with List" 
  value = [for i in aws_instance.ec2-web: i.public_ip]
}

# List with 
output "output_map_public_ip" {
  description = "Output with Map"
  value = { for i in aws_instance.ec2-web: i.arn => i.public_ip}  
}



# Output - For Loop with Map Advanced
output "output_map_advanced_public_ip" {
  description = "Output with Map Advanced"  
  value = { for c, i in aws_instance.ec2-web: c => i.public_dns }
}

# Output Legacy Splat Operator (Legacy) - Returns the List# Output Legacy Operator 
output "legacy-operator" {
  description = "Legacy Operator"
  value = aws_instance.ec2-web.*.public_dns
}

# Output Latest Generalized Splat Operator - Returns the List# Output Legacy 
output "latest-splat-operator" {
  description = "Latest Splat operator"
  value = aws_instance.ec2-web[*].public_dns
}




  