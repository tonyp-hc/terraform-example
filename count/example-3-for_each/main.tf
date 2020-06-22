# terraform-examples
## count: example 3 - for_each 

resource "random_pet" "counting_example" {
  for_each = {
    primary = "counting_example_1"
    secondary = "counting_example_2"
  }
}

### results can be supplied in lexical order, discarding the keys
output "pet_names" {
  value = [ for pet in random_pet.counting_example : pet.id  ]
}

### alternative methods: https://github.com/hashicorp/terraform/issues/22476#issuecomment-532732699

### example with a cloud resource
#provider "aws" {
#  version = "~> 2.0"
#  region  = "us-west-1"
#}
#
#resource "aws_vpc" "counting_example" {
#  for_each = {
#    primary = "counting_example_1"
#    secondary = "counting_example_2"
#  }
#  cidr_block = "10.0.0.0/16"
#  tags = {
#    Name = each.value
#  }
#}
#
#output "vpc_id" {
#  value = [ for vpc in aws_vpc.counting_example : vpc.id ]
#}
