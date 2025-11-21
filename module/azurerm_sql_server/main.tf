resource "azurerm_mssql_server" "sql" {
    for_each                   = var.sql 
  name                         = each.value.sql_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.admin_login
  administrator_login_password = each.value.admin_password
  minimum_tls_version          = each.value.min_tls
}