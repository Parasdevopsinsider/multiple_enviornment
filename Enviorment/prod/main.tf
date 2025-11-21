variable "rg_name1" {}

module "resource_group" {
  source   = "../../module/azurerm_resource_group"
  rg_nameA = var.rg_name1
}


variable "vnet" {}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_network"
  vnet1      = var.vnet
}

variable "pip" {}

module "public_ip" {
  depends_on = [module.virtual_network]
  source     = "../../module/azurerm_public_ip"
  pip1       = var.pip
}

variable "nic" {}

module "network_interface" {
    depends_on = [ module.public_ip ]
  source = "../../module/azurerm_network_interface"
  nic1   = var.nic
}
# 
variable "vm01" {}

module "vmA" {
    depends_on = [ module.network_interface ]
  source = "../../module/azurerm_vm"
  vm1    = var.vm01
}
# 
variable "stg1" {}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_stg"
  stg_001    = var.stg1
}

variable "kv" {}

module "key_vault" {
depends_on = [module.resource_group] 
  source  = "../../module/azurerm_keyvault"
  key_001 = var.kv
}
# 
variable "kvpassword" {}
 
module "keypassword" {
source = "../../module/azurerm_keyvault_secret"
kv-001 = var.kvpassword
} 
# 
variable "sqlA" {}

module "sql_server" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_sql_server"
  sql        = var.sqlA
}

variable "sqldbA" {}

module "sql_database" {
  depends_on = [module.sql_server]
  source     = "../../module/azurerm_sql_db"
  sql_db     = var.sqldbA
}