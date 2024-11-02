terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3e2875de-c6b7-4fb2-a981-e0c5cacb7925"
  client_id       = "<appId from service principal>"
  client_secret   = "<password from service principal>"
  tenant_id       = "40c09225-3c1a-4894-8200-f1b020147494"
}
