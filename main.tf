provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "my_database" {
  identifier            = "my-database-instance"
  allocated_storage     = 20
  storage_type          = "gp2"
  engine                = "mysql"
  engine_version        = "5.7.34"
  instance_class        = "db.t3.micro"
  db_name                  = "mydatabase"
  username              = "admin"
  password              = "password"
  parameter_group_name  = "default.mysql5.7"
  
}
