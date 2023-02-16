resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier = replace(local.name, "resource", "rds")
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = random_password.db_password.result
  skip_final_snapshot  = var.env != "prod" ? true : false
  final_snapshot_identifier = var.env != "prod" ? null : replace(local.name, "resource", "db_final_snapshot")
}

resource "random_password" "db_password" {
    length = 20
    special = true
    override_special = "@%"
}


