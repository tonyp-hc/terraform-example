# terraform-examples
## count: example 2 - resource count 

resource "random_pet" "server_names" {
  count = 2
}

output "server_names" {
  value = random_pet.server_names[*].id 
}
