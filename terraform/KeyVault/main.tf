# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "RG" {
    source = "../Modules/KeyVault"
    RG = var.RG
}
