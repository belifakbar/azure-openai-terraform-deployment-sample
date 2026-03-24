# Azure provider version
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0, < 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
    backend "azurerm" {
      resource_group_name  = "rg_azure_openai"
      storage_account_name = "stgazureopenai101"
      container_name       = "terraformstateprod"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  client_id       = "c3deabf1-6ac8-41c6-ba2a-a720c10c4425"
  client_secret   = var.client_secret
  tenant_id       = "bc5bd3e5-d7c8-4acd-80ff-af8772686fa0"
  subscription_id = "0e24db2d-0871-4a1b-bad3-708fa707ded1"
}

provider "azapi" {}

provider "random" {}
