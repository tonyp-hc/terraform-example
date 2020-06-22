# terraform-examples
## count: example 5 - module expansion
## NOTE: these examples require TF 0.13 which is currently in beta

module "tokens_count" {
  source  = "scholzj/kubeadm-token/random"
  version = "1.1.0"
  count = 2 
}

output "tokens_via_count" {
  value = module.tokens_count[*].token
}


module "tokens_foreach" {
  source  = "scholzj/kubeadm-token/random"
  version = "1.1.0"
  for_each = {
    primary = "counting_example_1"
    secondary = "counting_example_2"
  }
}

### results can be supplied in lexical order, discarding the keys
output "tokens_via_foreach" {
  value = [ for example in module.tokens_foreach : example.token ]
}
