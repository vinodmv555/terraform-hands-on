locals {
  environment = var.environment
  owners      = var.businessunit
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
}