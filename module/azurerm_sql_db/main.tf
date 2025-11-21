data "azurerm_mssql_server" "sql" {
    name = "sqldev0o1"
    resource_group_name = "rg-dev-002"
}


resource "azurerm_mssql_database" "sqldb" {
    for_each = var.sql_db
  name         = each.value.name
  server_id    = data.azurerm_mssql_server.sql.id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type
  

}