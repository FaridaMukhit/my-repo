locals {
  name = "aws-${var.team}-${var.env}-${var.app}-resource-${var.index}"
  common_tags = {
    Team        = var.team
    Owner       = var.owner
    Environment = var.env
    Application = var.app
    Managed_by  = var.managed_by
  }
}