terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

variable "number_var" {
  type = number
  default = 10
}

resource "random_integer" "random_int" {
  min = 0
  max = var.number_var
}

resource "random_integer" "random_int_different" {
  min = 0
  max = 20
}

output "submodule_output" {
  value = random_integer.random_int.result
}