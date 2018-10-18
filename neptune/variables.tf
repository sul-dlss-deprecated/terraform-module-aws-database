variable name {}
variable family {
    default = "neptune1"
}
variable query_timeout {
    default = "12000"
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
    default = true
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

variable vpc_security_group_ids {
    type = "list"
}