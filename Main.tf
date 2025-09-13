terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "239f86cf-d0d2-4954-935f-40e39253100c"

  features {

  }

}
resource "azurerm_resource_group" "rg_1" {
  name     = "rg_sh"
  location = "West Europe"
}

resource "azurerm_storage_account" "sh_1" {
  name                     = "shubh"
  resource_group_name      = azurerm_resource_group.rg_1.name
  location                 = azurerm_resource_group.rg_1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


}
