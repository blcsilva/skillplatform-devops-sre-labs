terraform {
  required_version = ">= 1.6.0"
}

variable "environment" {
  type    = string
  default = "lab"
}

output "environment" {
  value = var.environment
}
