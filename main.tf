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

variable "sam" {
  default = ["a", false, 123,"xyz"]
}


output "x" {
  value = var.x
}

output "b" {
  value = "b value is ${var.b}"
}

output "example" {
  value = var.example["a"]
}

output "sam" {
  value = "sam is  ${var.sam[1]}"
}

