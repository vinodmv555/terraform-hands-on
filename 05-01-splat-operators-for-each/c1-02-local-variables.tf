locals {
  environment = var.environment
  owners      = var.businessunit
  common_tags = {
    environment = local.environment
    owners      = local.owners
  }
}