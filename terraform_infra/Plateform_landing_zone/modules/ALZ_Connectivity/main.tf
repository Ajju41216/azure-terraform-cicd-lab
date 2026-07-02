resource "azurerm_virtual_network" "vnet" {
  for_each            = var.connectivity
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = ["10.0.0.0/16"]
}
