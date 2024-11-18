terraform {
  #backend "local" {}
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate3x57z"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}