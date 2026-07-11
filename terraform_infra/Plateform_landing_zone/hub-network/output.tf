
output "vnet_names" {
  value = {
    for k, v in azurerm_virtual_network.vnet :
    k => v.name
  }
}

output "vnet_ids" {
  value = {
    for k, v in azurerm_virtual_network.vnet :
    k => v.id
  }
}

output "rg_names" {
  value = {
    for k, v in azurerm_resource_group.rg :
    k => v.name
  }
}