terraform {
  backend "azurerm" {}
}


data "terraform_remote_state" "foo" {
  backend = "azurerm"
  config = {
    storage_account_name = "strg788"
    container_name       = "terraform"
    key                  = "${var.RG}/terraform.tfstate"
  }
}
