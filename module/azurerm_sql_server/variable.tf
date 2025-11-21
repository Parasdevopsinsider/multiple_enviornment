variable "sql" {
    description = "sql name"
    type = map(object({
        sql_name = string
        rg_name = string
        location = string
        version = optional(string)
        admin_login = string
        admin_password = string
        min_tls = optional(string)
    }))
}








