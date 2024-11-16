terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }

<<<<<<< Updated upstream
  backend "azurerm" {}
=======
  backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
>>>>>>> Stashed changes
}

provider "azurerm" {
  subscription_id            = var.subscription
  client_id                  = var.client_id
  client_secret              = var.client_secret
  tenant_id                  = var.tenant
  environment                = var.environment
  skip_provider_registration = true
  features {}
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "US DoD East"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

