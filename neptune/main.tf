resource "aws_neptune_parameter_group" "neptune-param-group" {
  name   = "${var.name}-neptune-params"
  family = "${var.family}"

  parameter {
    name  = "neptune_query_timeout"
    value = "${var.query_timeout}"
  }
}

resource "aws_neptune_subnet_group" "subnet_group" {
  name       = "${var.name}-subnet-group"
  subnet_ids = ["${var.subnet_ids}"]

  tags {
    Name = "${var.name} - Neptune Subnet Group [terraform]"
  }
}

resource "aws_neptune_cluster" "neptune_cluster" {
  cluster_identifier                  = "${var.name}-neptune-cluster"
  engine                              = "${var.engine}"
  backup_retention_period             = "${var.backup_retention_period}"
  preferred_backup_window             = "${var.backup_window}"
  skip_final_snapshot                 = "${var.skip_final_snapshot}"
  iam_database_authentication_enabled = false
  apply_immediately                   = true
}

resource "aws_neptune_cluster_instance" "neptune_instance" {
  count                     = 1
  engine                    = "${var.engine}"
  instance_class            = "${var.instance_class}"
  cluster_identifier        = "${var.name}"
  parameter_group_name      = "${aws_neptune_parameter_group.neptune-param-group.name}"
  apply_immediately         = true

  tags {
    Note = "Deployed by terraform"
  }
}