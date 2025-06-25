data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg"  {
 name     = "rg-state"
 location = var.location
}

