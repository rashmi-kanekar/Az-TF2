terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "strg788"
    container_name       = "terraform"
    #key                  = "${var.RG}/terraform.tfstate"
    key                  = "${var.RG}/terraform.tfstate"
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "RG" {
  source = "../Modules/ResourceGroup"
  RG = var.RG
}
