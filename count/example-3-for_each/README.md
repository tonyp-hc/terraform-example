# terraform-examples
## count: example 3 - for_each 

```HCL
$ terraform init
[ . . . snip . . . ]

$ terraform apply -auto-approve
random_pet.counting_example["secondary"]: Creating...
random_pet.counting_example["primary"]: Creating...
random_pet.counting_example["secondary"]: Creation complete after 0s [id=cute-spider]
random_pet.counting_example["primary"]: Creation complete after 0s [id=fitting-treefrog]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

pet_names = [
  "fitting-treefrog",
  "cute-spider",
]
```
