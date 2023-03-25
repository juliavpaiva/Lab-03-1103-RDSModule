resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = var.subnet_group_name_list

  tags = {
    Name = "DBSunbnetGroup-${var.db_name}"
  }
}

resource "aws_db_instance" "rds_instance" {

  identifier             = var.identifier
  db_name                = var.db_name
  instance_class         = var.instance_class
  allocated_storage      = var.storage_size
  engine                 = var.engine
  engine_version         = var.engine_version
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = "${aws_db_subnet_group.rds_subnet_group.name}"
  username               = var.username
  password               = var.password

  tags = {
    "Name" = "RDS-${var.db_name}-${var.engine}-${var.engine_version}"
	  }
}
