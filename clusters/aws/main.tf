data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

module "rds" {
  source = "../../modules/rds"

  cluster_name      = var.cluster_name
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage

  db_user     = var.db_user
  db_password = var.db_password

  vpc_id     = data.aws_vpc.default.id
  subnet_ids = data.aws_subnets.default.ids
}
