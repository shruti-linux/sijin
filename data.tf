# #  suppose you have provision the resource in the  portal(azure/aws )but using the same resoucre you are interested in deploying other resource.
# # go to portal and crete the resource group 

# data "azurerm_resource_group" "test4" {
#   name = "gene"
# }

# resource "azurerm_virtual_network" "test4" {
#   name                = "shrutikul-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = data.azurerm_resource_group.test4.location
#   resource_group_name = data.azurerm_resource_group.test4.name
# }


# resource "azurerm_subnet" "test4" {
#   name                 = "shrutikul-internal"
#   resource_group_name  = data.azurerm_resource_group.test4.name
#   virtual_network_name = data.azurerm_virtual_network.test4.name
#   address_prefixes     = ["10.0.2.0/24"]
#   depends_on = [ azurerm_virtual_network.test4.name ]
# }
