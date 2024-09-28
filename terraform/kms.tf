# kms.tf

resource "aws_kms_key" "my_kms_key" {
  description             = "KMS key for encrypting resources"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_kms_alias" "my_kms_alias" {
  name          = "alias/my-kms-key"
  target_key_id = aws_kms_key.my_kms_key.id
}
