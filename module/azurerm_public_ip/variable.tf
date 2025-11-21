variable "pip1" {
    description = "The configuration for Public IPs."
    type        = map(object({
        pip_name           = string
        location          = string
        rg_name           = string
        allocation_method = string
        sku               = optional(string)
    }))
}

