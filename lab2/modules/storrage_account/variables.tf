variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "jonaslab2sa"
}

variable "location" {
  description = "Azure region to deploy to"
  type        = string
  default     = "norwayeast"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "jotron-training-rg"
}

variable "account_tier" {
  description = "The account tier for the storage account"
  type        = string
  default     = "Standard"
  
}

variable "account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
  default     = "LRS"
  
}