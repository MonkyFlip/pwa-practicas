# locals.tf

locals {
  project_name = "lab3"
  environment  = "dev"

  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    ManagedBy   = "Terraform"
  }
}

locals {
  suffix            = "${local.project_name}-${local.environment}"
  location          = "East US"
  resource_location = "West US"
  tags              = local.common_tags
}
