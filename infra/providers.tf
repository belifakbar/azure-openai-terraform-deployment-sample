# Azure provider version
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0, < 4.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 1.15"
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
}

provider "azapi" {
  # Reuse Azure CLI session established by azure/login in GitHub Actions.
  use_cli = true
}

provider "random" {}
