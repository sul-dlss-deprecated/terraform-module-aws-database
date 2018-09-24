output "db_instance_address" {
  value = "${aws_db_instance.db_instance.address}"
}

output "db_instance_id" {
  value = "${aws_db_instance.db_instance.id}"
}

output "instance_endpoint" {
  value = "${aws_db_instance.db_instance.endpoint}"
}