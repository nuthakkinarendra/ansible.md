resource "azurerm_public_ip" "ansiblepip" {
  name                = "ansiblepublic"
  resource_group_name = azurerm_resource_group.ansible-rg.name
  location            = azurerm_resource_group.ansible-rg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}