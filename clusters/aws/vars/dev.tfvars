cluster_name      = "dev-free-tier-db"
instance_class    = "db.t3.micro"
allocated_storage = 20

db_user     = "postgres"
db_password = "Admin@123"

vpc_id = "vpc-xxxx"

subnet_ids = [
  "subnet-aaa",
  "subnet-bbb"
]
