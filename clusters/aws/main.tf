module "rds" {
  source = "../../modules/rds"

  cluster_name  = var.cluster_name
  instance_type = var.instance_type
  db_user       = var.db_user
  db_password   = var.db_password
  vpc_id        = var.vpc_id
  subnet_ids    = var.subnet_ids
}

