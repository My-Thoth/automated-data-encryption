resource "aws_kms_key" "kms_key" {
  description             = "Module managed KMS key"
  enable_key_rotation     = true
}

resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.alias}"
  target_key_id = aws_kms_key.kms_key.id
}

output "kms_key_id" {
  value = aws_kms_key.kms_key.id
}
