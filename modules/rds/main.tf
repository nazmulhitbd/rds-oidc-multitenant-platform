resource "aws_db_subnet_group" "this" {
  name       = "${var.cluster_name}-subnet"
  subnet_ids = var.subnet_ids
}

resource "aws_security_group" "this" {
  name   = "${var.cluster_name}-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "this" {
  identifier = var.cluster_name

  engine         = "postgres"
  engine_version = "15"

  instance_class = var.instance_type

  allocated_storage = 20

  username = var.db_user
  password = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.this.name
  vpc_security_group_ids = [aws_security_group.this.id]

  publicly_accessible = true
  skip_final_snapshot = true
}

