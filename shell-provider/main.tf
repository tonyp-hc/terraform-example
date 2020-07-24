provider "shell" {
}

resource "null_resource" "force-run" {
  triggers = {
    trigger = "${uuid()}"
  }
}

data "shell_script" "user" {
	lifecycle_commands {
		read = <<-EOF
		  echo "{\"user\": \"$(whoami)\"}"
		EOF
	}
}
# "user" can be accessed like a normal Terraform map
output "user" {
	value = data.shell_script.user.output["user"]
}
