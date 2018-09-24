variable name {}
variable family {
    default = "neptune1"
}
variable query_timeout {
    default = "60"
}

variable engine {
    default = "neptune"
}
variable engine_version {
    default = "9.5"
}
variable instance_class {
    default = "db.r4.large"
}

variable skip_final_snapshot {
    default = false
}

variable backup_retention_period {
    default = 5
}
variable backup_window {
    default = "22:00-23:00"
}

variable subnet_ids {
    type = "list"
}

variable replication_source_identifier {}