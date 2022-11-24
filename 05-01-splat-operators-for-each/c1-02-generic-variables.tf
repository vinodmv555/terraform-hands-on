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
}