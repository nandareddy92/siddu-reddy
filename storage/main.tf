resource "azurerm_storage_account" "storage_account" {
  name                     = var.sa_name
  resource_group_name      = var.rg_nanda
  location                 = var.location_nanda
  account_tier             = var.sa_account_tier
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}