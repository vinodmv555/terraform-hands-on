locals {
  environment = var.environment
  owners      = var.businessunit
  name = "${var.businessunit}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
}