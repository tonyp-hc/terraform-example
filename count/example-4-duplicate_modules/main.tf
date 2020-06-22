# terraform-examples
## count: example 4 - duplicate modules 

module "token_1" {
  source  = "scholzj/kubeadm-token/random"
  version = "1.1.0"
}

module "token_2" {
  source  = "scholzj/kubeadm-token/random"
  version = "1.1.0"
}

output "token_1" {
  value = module.token_1.token
}

output "token_2" {
  value = module.token_2.token
}
