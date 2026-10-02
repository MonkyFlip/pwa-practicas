locals {
  unique_name = "${var.name}-${var.environment}-${random_string.suffix.result}"
  application_name = var.application_name
}