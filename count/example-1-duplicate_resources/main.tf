# terraform-examples
## count: example 1 - duplicate resources

resource "random_pet" "server_name_1" {
}

output "server_name_1" {
  value       = random_pet.server_name_1.id 
}

resource "random_pet" "server_name_2" {
}

output "server_name_2" {
  value       = random_pet.server_name_2.id 
}
