# rds_encryption.tf

resource "aws_db_instance" "my_rds" {
  allocated_storage    = 20
  storage_encrypted    = true
  kms_key_id           = aws_kms_key.my_kms_key.arn  # Reference the KMS key
  engine               = "mysql"
  instance_class       = "db.m5.large"
  db_name                 = "mydb"
  username             = var.db_username
  password             = aws_secretsmanager_secret_version.my_secret_version.secret_string  # Reference the secret
  skip_final_snapshot  = true
}
