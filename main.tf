variable "x" {
  default = 20
}

variable "b" {
  default = "xyz"
}

variable "example" {
  default = {
    a = 123
    b = "check"
    c = true
  }
}


output "x" {
  value = var.x
}

output "b" {
  value = "b value is ${var.b}"
}