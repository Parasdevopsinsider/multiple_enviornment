variable "vm1" {
  description = "The configuration for Virtual Machines."
  type = map(object({

    vm_name        = string
    location       = string
    rg_name        = string
    vm_size        = string
    nic_name       = string
    admin_username = string
  

  }))
}
