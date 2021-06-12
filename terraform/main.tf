terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "strg788"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}
 
provider "azurerm" {
  features {}
}
 
data "azurerm_client_config" "current" {}
 
#Create Resource Group
resource "azurerm_resource_group" "temprg1" {
  name     = "temprg1"
  location = "eastus2"
