module "database" {
  source = "../../modules/database"

  databases = var.databases
}
