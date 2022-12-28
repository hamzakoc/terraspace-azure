resource "azurerm_storage_account" "this" {
  name                      = var.name
  resource_group_name       = var.rg_name
  location                  = var.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = var.enable_https_traffic_only
}
