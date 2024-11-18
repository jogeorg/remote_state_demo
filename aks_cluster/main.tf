terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.95"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.12.1"
    }
  }
}

provider "azurerm" {
  environment = "usgovernment"
  features {}
}

# resource "time_sleep" "wait_2_minutes" {
#   create_duration = "2m"
# }

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "usgovvirginia"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/24"]
}
