# Generic Variables for this module
# Variable for Region for creating resuoruces
variable "aws_region" {
  description = "AWS Region for resource creation"
  default     = "ap-south-1"
}

# EC2 AWS Key Pair
variable "aws_keypair" {
  description = "AWS Key Pair for connecting EC2 Instances"
  default     = "terraform-key"
}

# Instance Type
variable "instance_type" {
  description = "EC2 Instance type"
  default     = "t3.micro"
}

# Environment 
variable "environment" {
  description = "Infra Environment"
  default     = "dev"
}

# Business Unit 
variable "businessunit" {
  description = "Business Unit Informaation"
  default     = "HR"
}