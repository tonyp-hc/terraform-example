# terraform-examples
## count: example 4 - duplicate modules 

```HCL
$ terraform init
[ . . . snip . . . ]

$ terraform apply -auto-approve
module.token_2.random_shuffle.token1: Creating...
module.token_1.random_shuffle.token2: Creating...
module.token_1.random_shuffle.token1: Creating...
module.token_2.random_shuffle.token2: Creating...
module.token_2.random_shuffle.token1: Creation complete after 0s [id=-]
module.token_1.random_shuffle.token1: Creation complete after 0s [id=-]
module.token_2.random_shuffle.token2: Creation complete after 0s [id=-]
module.token_1.random_shuffle.token2: Creation complete after 0s [id=-]
module.token_2.data.template_file.kubeadm_token: Refreshing state...
module.token_1.data.template_file.kubeadm_token: Refreshing state...

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

token_1 = igtspn.0ryo41i98jz7ewqn

token_2 = hstn98.1bsetdwl6uyx9zjc
```
