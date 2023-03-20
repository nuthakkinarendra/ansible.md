resource "azurerm_network_interface" "ansibleniccart" {
  name                = "anciblenic"
  location            = azurerm_resource_group.ansible-rg.location
  resource_group_name = azurerm_resource_group.ansible-rg.name

  ip_configuration {
    name                          = "ansibleconfiguration"
    subnet_id                     = azurerm_subnet.subnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id= azurerm_public_ip.ansiblepip.id
  }
}