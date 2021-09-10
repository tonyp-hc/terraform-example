# terraform-examples
## sensitive variables in a for_each loop

*Credit to @straubt1: https://gist.github.com/straubt1/476d11a83db6499a262e15164b903600* 

Example Output:
```
$ terraform apply                                                                                                                           [10:44:23]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_pet.name["one"] will be created
  + resource "random_pet" "name" {
      + id        = (known after apply)
      + length    = 2
      + prefix    = (sensitive)
      + separator = ","
    }

  # random_pet.name["two"] will be created
  + resource "random_pet" "name" {
      + id        = (known after apply)
      + length    = 4
      + prefix    = (sensitive)
      + separator = ";"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_pet.name["two"]: Creating...
random_pet.name["one"]: Creating...
random_pet.name["two"]: Creation complete after 0s [id=secrettwo;directly;hideously;welcome;coyote]
random_pet.name["one"]: Creation complete after 0s [id=secretone,super,bird]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```
