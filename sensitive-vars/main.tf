# Using the 'random_pet' resource to drive the example and treating the "prefix" argument as a secret.
variable "pets" {
  description = "Map of 'random_pets' to create. These would be any non-sensitive values used to configure the resource."
  type = map(object({
    length    = number
    separator = string
  }))

  # default for easy demo
  default = {
    "one" = {
      length    = 2,
      separator = ","
    },
    "two" = {
      length    = 4,
      separator = ";"
    }
  }
}

variable "pets_sensitive" {
  description = "Map of 'random_pets' to create, keys MUST match var.pets input variable. These would be an sensitive values used to configure the resource."
  sensitive   = true
  type = map(object({
    prefix = string
  }))

  # default for easy demo
  default = {
    "one" = {
      prefix = "secretone"
    },
    "two" = {
      prefix = "secrettwo"
    }
  }
}

locals {
  # Combine both variables into a single map, important note is that key in this map can NOT
  # be derived from the variable marked as sensitive.
  random_pets_map = {
    for key, value in var.pets : key => {
      length    = value.length
      separator = value.separator
      prefix    = var.pets_sensitive[key].prefix
    }
  }
}

resource "random_pet" "name" {
  for_each = local.random_pets_map

  length    = each.value.length
  separator = each.value.separator
  prefix    = each.value.prefix
}

# In order for this to work, you must comment out the "sensitive   = true" for the "pets_sensitive" variable above.
# output "debug" {
#   value = {
#     test = local.random_pets_map
#   }
# }
