
# create rds instance  

resource "aws_db_instance" "default" {
  allocated_storage    = var.storage
  engine               = var.engine
  engine_version       = var.version1
  instance_class       = var.class
  db_name              = var.name
  vpc_id               = var.vpc
  username             = var.username
  password             = var.password
  parameter_group_name = "default.postgresql13.4"
  deletion_protection = true
  skip_final_snapshot  = true
  
}
