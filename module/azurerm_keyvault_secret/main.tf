data "azurerm_key_vault" "kv" {
  name                = "kvdev001A"
  resource_group_name = "rg-dev-002"
}

resource "azurerm_key_vault_secret" "secret1" {
  for_each     = var.kv-001
  name         = each.value.name
  value        = each.value.value
  key_vault_id = data.azurerm_key_vault.kv.id

}


