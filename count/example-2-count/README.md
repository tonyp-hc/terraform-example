# terraform-examples
## count: example 2 - count meta-argument 

```HCL
$ terraform init
[ . . . snip . . . ]

$ terraform apply -auto-approve
random_pet.server_names[1]: Creating...
random_pet.server_names[0]: Creating...
random_pet.server_names[1]: Creation complete after 0s [id=humble-doberman]
random_pet.server_names[0]: Creation complete after 0s [id=grateful-yak]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

server_names = [
  "grateful-yak",
  "humble-doberman",
]
```
