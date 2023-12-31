provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "acr-rg" {
  name     = "acr-rg"
  location = "eastus2"
}

resource "azurerm_container_registry" "apifabio" {
  name                     = "apifabio"
  resource_group_name      = azurerm_resource_group.acr-rg.name
  location                 = azurerm_resource_group.acr-rg.location
  sku                      = "Standard"
  admin_enabled            = true
}