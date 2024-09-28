# s3_encryption.tf

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-very-unique-bucket-name-12345"
}

# Separate resource for bucket encryption configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "my_bucket_sse" {
  bucket = aws_s3_bucket.my_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.my_kms_key.arn  # Reference to the KMS key
    }
  }
}
