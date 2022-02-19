
# create rds instance  

resource "aws_db_instance" "default" {
  allocated_storage    = var.storage
  engine               = var.engine
  engine_version       = var.version1
  instance_class       = var.class
  name                 = var.name
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  
}
