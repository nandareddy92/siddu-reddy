  terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
features {}
}
resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.rg_location
}

module "storage" {
  source = "./storage"
 rg_nanda = azurerm_resource_group.example.name   
 location_nanda = azurerm_resource_group.example.location
sa_account_tier = var.sa_account_tier
}


