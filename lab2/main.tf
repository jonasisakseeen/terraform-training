resource "azurerm_resource_group" "rg" {
  name     = "jotron-training-rg"
  location = "norwayeast"
}

module "storage_account_one" {
    source              = "./modules/storrage_account"
    storage_account_name = "${var.storage_account_name}one"
    location            = var.location
    account_tier        = "Standard"
    account_replication_type = "LRS"
}

module "storage_account_two" {
    source              = "./modules/storrage_account"
    storage_account_name = "${var.storage_account_name}two"
    location            = var.location
    account_tier        = "Standard"
    account_replication_type = "LRS"
}