variable "key_001" {
    description = "New KV add"
    type = map(object({
name                        = string
location                    =  string
rg_name                     =  string
sku_name                    =  string
soft_delete                 = optional(number)
purge_protection            =  optional(bool)
    }))
}