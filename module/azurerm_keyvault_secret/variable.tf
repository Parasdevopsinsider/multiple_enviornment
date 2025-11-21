variable "kv-001" {
    description = "vm username"
    type = map(object({
        name = string
        value = string
    }))
}

