# terraform-examples
## count: example 5 - module expansion 

This example shows how `count` and `for_each` can be used with modules. These are terraform 0.13 features which is currently in beta testing (as of 2020/06/22).

Terraform 0.13 should _not_ be used in production during the beta phase.

The primary documentation will be updated soon but an early preview can also be found at the [source](https://github.com/hashicorp/terraform/blob/master/website/docs/configuration/modules.html.md#multiple-instances-of-a-module).

```HCL
$ /path/to/terraform013 init
[ . . . snip . . . ]

$ /path/to/terraform013 apply -auto-approve 
$ ~/Work/binaries/terraform/terraform013 apply -auto-approve
module.tokens_foreach["secondary"].random_shuffle.token2: Creating...
module.tokens_count[1].random_shuffle.token2: Creating...
module.tokens_foreach["primary"].random_shuffle.token1: Creating...
module.tokens_count[0].random_shuffle.token1: Creating...
module.tokens_count[1].random_shuffle.token1: Creating...
module.tokens_foreach["secondary"].random_shuffle.token1: Creating...
module.tokens_count[0].random_shuffle.token2: Creating...
module.tokens_foreach["primary"].random_shuffle.token2: Creating...
module.tokens_count[0].random_shuffle.token1: Creation complete after 0s [id=-]
module.tokens_count[1].random_shuffle.token1: Creation complete after 0s [id=-]
module.tokens_foreach["secondary"].random_shuffle.token1: Creation complete after 0s [id=-]
module.tokens_count[1].random_shuffle.token2: Creation complete after 0s [id=-]
module.tokens_foreach["secondary"].random_shuffle.token2: Creation complete after 0s [id=-]
module.tokens_count[0].random_shuffle.token2: Creation complete after 0s [id=-]
module.tokens_foreach["primary"].random_shuffle.token2: Creation complete after 0s [id=-]
module.tokens_foreach["primary"].random_shuffle.token1: Creation complete after 0s [id=-]
module.tokens_count[1].data.template_file.kubeadm_token: Reading...
module.tokens_count[0].data.template_file.kubeadm_token: Reading...
module.tokens_foreach["secondary"].data.template_file.kubeadm_token: Reading...
module.tokens_foreach["primary"].data.template_file.kubeadm_token: Reading...
module.tokens_count[1].data.template_file.kubeadm_token: Read complete after 0s [id=e969888b460bc3b17250ddabc066ce66a0afdeef00e72566856453141141ac7b]
module.tokens_count[0].data.template_file.kubeadm_token: Read complete after 0s [id=d1752a5a80ae59c9bba770510133748bbd2b89ce6aeebb0f9c5aa523b5afcdd5]
module.tokens_foreach["primary"].data.template_file.kubeadm_token: Read complete after 0s [id=6fbbb96bc1f492ef69d493cf77d7b987c69a7797470ca1b1f7983447dec62ca6]
module.tokens_foreach["secondary"].data.template_file.kubeadm_token: Read complete after 0s [id=5293ecdd4fe511332811653318f3c1c07ef53524bc05dc1ccbfae6a393d614b2]

Apply complete! Resources: 8 added, 0 changed, 0 destroyed.

Outputs:

tokens_via_count = [
  "o0n72b.nvw4ezu197md5yh6\n",
  "txpkdo.q8begosxljmtpa2k\n",
]
tokens_via_foreach = [
  "xlj6b0.5tyhf2goq1sa0ip3\n",
  "sbu4n0.9pqzmtos3lbdu6ag\n",
]
```
