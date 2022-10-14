resource "aws_db_instance" "databases" {
  name                       = "mydb"
  identifier                 = "my-database"
  engine                     = "mysql"
  engine_version             = "8.0.28"
  instance_class             = "db.t3.medium"
  availability_zone          = "us-east-2a"
  allocated_storage          = 20
  storage_type               = "standard"
  storage_encrypted          = true
  username                   = "test"
  password                   = "12345678"
  multi_az                   = false
  apply_immediately          = true
  maintenance_window         = "mon:04:00-mon:04:30"
  backup_window              = "02:00-02:30"
  backup_retention_period    = 1
  skip_final_snapshot        = false
  final_snapshot_identifier  = "my-database"
  parameter_group_name       = "default.mysql5.7"
  copy_tags_to_snapshot      = true
  auto_minor_version_upgrade = false

  tags = {
    name       = "mydb"
    identifier = "my-database"
    engine     = "mysql"
  }
}