variable "rg_nameA" {
  description = "The name of the Resource Group."
  type        = map(object({
    name      = string 
    location  = string 
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

# variable = 1. primative variable = string("rg1" "rg2"), number(1,2,3), bool(true)(singular)
          #  2. complex variable = list, map, set, object, tuple (purulal)
            # a. list(string) = count []
            # b. set(string) = toset []
            # c. map(string) = tomap {}
            # d. object = complex variable with multiple attributes {}
# rg_name1 = {
  # "rg1" = {
    # name       = "rg-dev-0011"
    # location   = "eastus"
    # managed_by = "team-a" (string)
    # tags = {
      # enviroment = "dev"
      # project    = "todo-app"
    # }
  # }
# }

  # "rg2" = {
    # name     = "rg-dev-002"
    # location = "eastus"
    #  managed_by = null
    # tags = {
      # enviroment = "dev"
      # project    = "todo-app"
    # }
  # }
# 
  # "rg1" = {
    # name       = "rg-dev-003"
    # location   = "eastus"
    # managed_by = "team-b"
  # }
  