resource "azurerm_resource_group" "rg" {
    for_each  = var.rg_nameA
    name      = each.value.name
    location  = each.value.location
    managed_by = each.value.managed_by
     tags      = each.value.tags
    #   managed_by = lookup(each.value, "managed_by", null)
    #   tags = lookup(each.value, "tags", null)

}

# toset = [rg1,rg2,rg3] 
# location = eastus
# 
# tomap = rg1 = centralus, rg2 = westus, rg3 = eastus
# 
# key(rg) = value (location)
# 
# name = each.key
# location = each.value
# 
# rg_name = { rg1 = centralus, rg2 = westus, rg3 = eastus }
# 
# nested map = 
# 
# stg_name = {
# 
    # key = value
        # 
# 
# 
#   stg1 (key) = {
    # name                    = "stgdev001"
    # location                = "eastus"
    # account_tier            = "Standard"
    # account_replication_type = "LRS"
#   }
#   stg2 = {
    # name                    = "stgdev002"
    # location                = "eastus2"
    # account_tier            = "Standard"
    # account_replication_type = "GRS"
#   }
# }
# 
# name = each.value.name
# 
# location = each.value.location
# 
# account_tier = each.value.account_tier
# 
# account_replication_type = each.value.account_replication_type