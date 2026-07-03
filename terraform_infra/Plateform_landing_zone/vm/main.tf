resource "azurerm_network_interface" "vms_nic" {
  name                = "rg_nic"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm_pip.id
  }
}

resource "azurerm_linux_virtual_machine" "vm_block" {
  name                            = "vm-ci"
  resource_group_name             = azurerm_resource_group.rg1.name
  location                        = azurerm_resource_group.rg1.location
  size                            = "Standard_D2s_v3"
  admin_username                  = "azureuser"
  admin_password                  = "Password@1234"
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.vms_nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    # Testing parameter added here:
    disk_size_gb = 30
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  # The child module combines them cleanly
  tags = merge(var.base_tags, var.custom_tags)
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg" {
  subnet_id                 = azurerm_subnet.subnet1.id
  network_security_group_id = azurerm_network_security_group.frontend_nsg.id
}