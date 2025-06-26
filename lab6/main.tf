variable "location" {
  description = "The location/region where the resource group will be created."
  type        = string
  default     = "norwayeast"
}
variable "storage_account_name" {
  description = "The name of the storage account. Must be globally unique."
  type        = string
  default     = "storagefrompublicreg"
}
resource "azurerm_resource_group" "rg" {
  name     = "rg-jonas-traininglab6"
  location = var.location
}
module "storageaccount" {
  source  = "JotronAS/sa-jonas/azure"
  version = "1.0.0"

  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = var.storage_account_name
}