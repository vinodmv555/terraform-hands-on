locals {
  environment = var.environment
<<<<<<< HEAD
  owners      = var.businessunit
  common_tags = {
    environment = local.environment
    owners      = local.owners
=======
  owners = var.businessunit
  common_tags = {
    environment = local.environment
    owners = local.owners
>>>>>>> 8005cff7d988589ba262f947f6309fc6d4fe6aa7
  }
}