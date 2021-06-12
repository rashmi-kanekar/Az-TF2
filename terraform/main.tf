terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "strg788"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }

   required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
 
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg"{
    name     = "myTFResourceGroup"
    location = "WestEurope"
    tags = {
        Environment = "Terraform Getting Started"
        Team = "DevOps"
    }
}