locals {
  tenants = var.tenants
}

resource "null_resource" "tenants" {
  for_each = { for t in local.tenants : t.name => t }

  provisioner "local-exec" {
    command = <<EOT
echo "Creating tenant: ${each.key}"

psql postgresql://postgres:${var.db_password}@${var.db_endpoint}:5432/postgres <<EOF
CREATE SCHEMA IF NOT EXISTS ${each.key}_core;
CREATE SCHEMA IF NOT EXISTS ${each.key}_audit;
CREATE SCHEMA IF NOT EXISTS ${each.key}_report;
EOF
EOT
  }
}
