data "azurerm_network_interface" "nic" {
  for_each            = var.vm1
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}

data "azurerm_key_vault" "kv" {
  for_each = var.vm1
  name                = "kvdev001A"
  resource_group_name = "rg-dev-002"
}


data "azurerm_key_vault_secret" "secret1" {
  for_each = var.vm1
  name         = "vmpassword"
key_vault_id   = data.azurerm_key_vault.kv[each.key].id

}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.vm1
  name                            = each.value.vm_name
  resource_group_name             = each.value.rg_name
  location                        = each.value.location
  size                            = each.value.vm_size
  admin_username                  = each.value.admin_username
  admin_password                  = data.azurerm_key_vault_secret.secret1["vmA-prod-001"].id
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.nic["vmA-prod-001"].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}































































































































































































































































































