variable "db_password" {}
variable "db_endpoint" {}

variable "tenants" {
  type = list(object({
    name = string
    env  = string
  }))
}

