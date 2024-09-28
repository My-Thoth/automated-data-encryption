# ebs_encryption.tf

resource "aws_ebs_volume" "my_volume" {
  availability_zone = "us-east-1a"
  size              = 10
  encrypted         = true
  kms_key_id        = aws_kms_key.my_kms_key.arn  # This references the KMS key defined earlier
}
