output "endpoint" {
    value = "${aws_neptune_cluster_instance.neptune_instance.endpoint}"
}