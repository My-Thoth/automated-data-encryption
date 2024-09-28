# secretsmanager.tf

resource "aws_secretsmanager_secret" "my_secret" {
  name        = "mydb-password"
  description = "Database password for RDS instance"
}

resource "aws_secretsmanager_secret_version" "my_secret_version" {
  secret_id     = aws_secretsmanager_secret.my_secret.id
  secret_string = var.db_password  # Make sure you provide a value for the secret
}
