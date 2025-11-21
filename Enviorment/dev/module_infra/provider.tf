terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "0f3ac5ef-2f44-4958-b55a-e9e11600cafd"
}