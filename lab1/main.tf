resource "azurerm_resource_group" "rg" {
  name     = "jotron-training-rg"
  location = "norwayeast"
}

 
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}