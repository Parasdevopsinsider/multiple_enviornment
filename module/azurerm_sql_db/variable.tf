variable "sql_db" {
    description = "add sql database"
    type = map(object({
        name          = string
        collation     = string
        license_type  = optional(string)
        max_size_gb   = optional(number)
        sku_name      = optional(string)
        enclave_type  = optional(string)

    }))
}