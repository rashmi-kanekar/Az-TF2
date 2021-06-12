# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "RG" {
    source = "../Modules/ResourceGroup"
    RG = var.RG
}
