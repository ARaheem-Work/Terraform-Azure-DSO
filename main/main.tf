terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.87.0"
    }
  }

}

provider "azurerm" {
  features {}
}

variable "rg_location" {
  description = "(Optional) Region where the Azure resources will be created. Defaults to East US."
  type        = string
  default     = "westus3"
}

variable "rg_name" {
  description = "(Optional) Region where the Azure resources will be created. Defaults to East US."
  type        = string
  default     = "rg_Azure_App_Svc"
}


resource "azurerm_resource_group" "app_service" {
  name     = var.rg_name
  location = var.rg_location
}