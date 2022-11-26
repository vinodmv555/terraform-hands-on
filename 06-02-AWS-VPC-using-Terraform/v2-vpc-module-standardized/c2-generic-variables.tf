# Decalre AWS Region 
variable "aws_region" {
  description = "AWS Region where resource to be deployed"
  default = "us-east-1"
}

# Declare Environment
variable "environment" {
  description = "Environment Type"
  default     = "dev"
}

# Declare Businessunit
variable "businessunit" {
  description = "Businessunit"
  default = "HR"
}
