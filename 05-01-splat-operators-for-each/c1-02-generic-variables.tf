# Variables Region 
variable "aws_region" {
  description = "Region for AWS Resource Deployment"
  default     = "us-east-1"
}
# AWS Keypair
variable "aws_key_pair" {
  description = "AWS Keypair for connecting EC2"
  default     = "terraform-key"
}

# Variable Business Division 
variable "businessunit" {
  description = "Businessunit Information"
  default     = "HR"
}

# Variable Environment 
variable "environment" {
  description = "Enviornment"
  default     = "dev"
<<<<<<< HEAD
}

# Instance Type - List
variable "instance_type_list" {
  description = "Instance type as List"
  type        = list(string)
  default     = ["t3.micro", "t2.micro", "t3.small"]
}

# Instance Type - Map
variable "instance_type_map" {
  description = "Instance Type as Map"
  type        = map(string)
  default = {
    "dev" = "t2.micro"
    "tst" = "t3.micro"
    "prd" = "t3.small"
  }
=======
>>>>>>> 8005cff7d988589ba262f947f6309fc6d4fe6aa7
}