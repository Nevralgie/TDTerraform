terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.57.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }

  required_version = ">=0.12"
}

provider "azurerm" {
  features {}
}

module "ResourceGRoup" {
    source = "./ResourceGroup"
    base_name = "terralab"
    location = "francecentral"
  
}

module "StorageAccount" {
    source = "./StorageAccount"
    base_name = "tomlab"
    resource_group_name = module.ResourceGRoup.rg_name_out
    location = "francecentral"
  

  
}