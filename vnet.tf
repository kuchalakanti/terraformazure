resource "azurerm_virtual_network" "name" {
    name = "vnet01"
    address_space = ["10.1.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = "eastus"
  
}

resource "azurerm_subnet" "name" {
    name = "subneto1"
    address_prefixes = ["10.1.1.0/24"]
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.name.name
  
}