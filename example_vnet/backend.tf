terraform {
  #backend "local" {}
  backend "azurerm" {
    environment          = "usgovernment"
    resource_group_name  = "tfstate"
    storage_account_name = "tfstateuaapt"
    container_name       = "tfstate"
    key                  = "example_vnet/terraform.tfstate"
  }
}
