resource "azurerm_virtual_network" "ansiblevnet" {
  name                = "ansiblenetwork"
  address_space       = ["192.168.0.0/16"]
  location            = azurerm_resource_group.ansible-rg.location
  resource_group_name = azurerm_resource_group.ansible-rg.name
}

resource "azurerm_subnet" "subnetA" {
  name                 = "ansiblesubnet"
  resource_group_name  = azurerm_resource_group.ansible-rg.name
  virtual_network_name = azurerm_virtual_network.ansiblevnet.name
  address_prefixes     = ["192.168.0.0/24"]
}
