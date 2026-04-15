cluster_name  = "dev-rds-cluster"
instance_type = "db.t3.micro"

db_user     = "postgres"
db_password = "StrongPassword123!"

vpc_id = "vpc-xxxx"

subnet_ids = [
  "subnet-aaa",
  "subnet-bbb"
]

