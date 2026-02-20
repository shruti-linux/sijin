provider "azurerm" {
  features {
  }
subscription_id = "2df30ff1-915d-4d35-974a-3d3155aaa413"
}
resource "azurerm_resource_group" "taki-rg1" {
  name     = "rg-terraform-cloud"
  location = "westus"
}
