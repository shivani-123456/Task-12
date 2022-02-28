
provider "aws" {
  region = "us-west-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "postgres"
  identifier           =  "database-db"     
  engine_version       = "13"
  instance_class       = "db.t3.medium"
  name                 =  var.name
  username             =  var.username
  password             =  var.password
  vpc_security_group_ids = var.sg
  skip_final_snapshot  = true
  publicly_accessible  = true

}