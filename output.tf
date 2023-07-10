output "resource_group_name" {
  value       = azurerm_resource_group.resource_group.name
  description = "The Name of the RG."
}

output "cdn_profile_name" {
  value       = azurerm_cdn_profile.cdn_profile.name
  description = "The ID of the CDN Profile."
}

output "cdn_endpoint_id" {
  value       = azurerm_cdn_endpoint.cdn_endpoint.id
  description = "The ID of the Endpoint."
}
