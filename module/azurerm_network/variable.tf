variable "vnet1" {
    description             = "The name of the Virtual Network."
    type                    = map(object({
        vnet_name           = string 
        location            = string
        rg_name             = string
        address_space       = list(string) 
        tags                = optional(map(string))
        subnets             = optional(list(object({
            name            = string
            address_prefix  = list(string)
        })))
    }))
    
}