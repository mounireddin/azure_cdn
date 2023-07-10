resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.environment}-${var.workload_name}-${var.location_abbreviation}"
  location = var.location
  tags = {
    OwnerEmail = "mounir@mobilabsolutions.com"
  }
}

resource "azurerm_cdn_profile" "cdn_profile" {
  name                = "cdnp-${var.environment}-${var.workload_name}-${var.location_abbreviation}"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = var.sku
}

resource "azurerm_cdn_endpoint" "cdn_endpoint" {
  name                = "cdne-${var.environment}-${var.workload_name}-${var.location_abbreviation}"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  profile_name        = azurerm_cdn_profile.cdn_profile.name
  origin {
    name      = var.origin_name
    host_name = var.origin_host_name
  }
  is_http_allowed = var.is_http_allowed
}
