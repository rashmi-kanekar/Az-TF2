terraform {
   backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "strg788"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
