resource "azurerm_network_security_group" "frontend_nsg" {
  name                = "nsg-grp1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_network_security_rule" "frontend_rules" {
    name                       = "ssg"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    resource_group_name         = azurerm_resource_group.rg1.name
    network_security_group_name = azurerm_network_security_group.frontend_nsg.name
}