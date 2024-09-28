resource "aws_secretsmanager_secret" "secrets_manager" {
  name = var.secret_name
}

output "secret_arn" {
  value = aws_secretsmanager_secret.secrets_manager.arn
}
