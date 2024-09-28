output "kms_key_id" {
  value = aws_kms_key.my_kms_key.id
}

output "secret_arn" {
  value = aws_secretsmanager_secret.my_secret.arn
}

output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "rds_instance_endpoint" {
  value = aws_db_instance.my_rds.endpoint
}
