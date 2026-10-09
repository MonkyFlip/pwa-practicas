terraform{
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}

resource "random_string" "suffix" {
  length  = var.length
  special = false
}
