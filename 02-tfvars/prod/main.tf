variable "env" {}

resource "null_resource" "cluster" {
  provisioner "local-exec" {
    command = "echo ${var.env}"
  }
}

