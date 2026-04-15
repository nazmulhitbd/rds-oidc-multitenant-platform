resource "null_resource" "db" {
  for_each = toset(var.databases)

  provisioner "local-exec" {
    command = "echo Creating DB ${each.value}"
  }
}
