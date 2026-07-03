resource "azurerm_storage_account" "stgAcc" {
  depends_on               = [azurerm_resource_group.rg1]
  name                     = "messy03456devinfra"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}