terraform {
    required_version = ">= 1.9.0"

    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "3.110.0"
        }
        random = {
            source  = "hashicorp/random"
            version = "3.6.3"
        }
    }

    backend "azurerm" {
        resource_group_name  = "rg-state"
        storage_account_name = "saroydemo"
        container_name       = "jonas"
        key                  = "tftraining.tfstate"
      
    }
}