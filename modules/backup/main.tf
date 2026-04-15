resource "aws_db_snapshot" "snapshot" {
  db_instance_identifier = var.db_id
  db_snapshot_identifier = "${var.db_id}-snapshot"
}
