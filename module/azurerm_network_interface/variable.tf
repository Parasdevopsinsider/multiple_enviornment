variable "nic1" {
  description = "The name of the Network Interface."
  type = map(object({
    subnet_name = string
    vnet_name   = string
    pip_name    = string
    nic_name    = string
    location    = string
    rg_name     = string
    ip_config = map(object({
      name                          = string
      private_ip_address_allocation = string
    }))
  }))
}
    
