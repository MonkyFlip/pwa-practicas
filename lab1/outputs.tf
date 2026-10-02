output "application_name" {
  value = random_string.suffix.result
}

output "unique_name" {
  value = local.unique_name
}

output "enable_monitoring" {
  value = var.enable_monitoring
}

output "regions" {
  value = var.regions
}

output "environment_tags" {
  value = var.environment_tags
}

output "aplication_config" {
  value = var.aplication_config
}

output "allowed_networks" {
  value = var.allowed_networks
}