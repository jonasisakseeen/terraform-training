terraform {
  required_version = ">= 1.12.1"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "397aa071-fe91-46c8-9a12-3cc145df67cc"

}