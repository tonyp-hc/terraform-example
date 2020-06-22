# terraform-examples
## count: example 1 - duplicate resources

```HCL
$ terraform init
[ . . . snip . . . ]

$ terraform apply -auto-approve
random_pet.server_name_1: Creating...
random_pet.server_name_2: Creating...
random_pet.server_name_1: Creation complete after 0s [id=fitting-marlin]
random_pet.server_name_2: Creation complete after 0s [id=charming-liger]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

server_name_1 = fitting-marlin
server_name_2 = charming-liger
```
