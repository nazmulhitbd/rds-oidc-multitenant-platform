variable "cluster_name" {}
variable "instance_class" {}
variable "allocated_storage" {}
variable "db_user" {}
variable "db_password" {}
variable "vpc_id" {}

variable "subnet_ids" {
  type = list(string)
}
