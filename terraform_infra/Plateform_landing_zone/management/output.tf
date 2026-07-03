

output "rg_names" {

  value = {

    for k, v in azurerm_resource_group.rg1 :

    k => v.name

  }
}

# When have single resource

# output "rg_name" {
#   value = azurerm_resource_group.example.name
# }