variable "cluster_name" {}
variable "instance_type" {}
variable "db_user" {}
variable "db_password" {}
variable "vpc_id" {}

variable "subnet_ids" {
  type = list(string)
}
