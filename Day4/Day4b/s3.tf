resource "aws_s3_bucket" "test" {
  bucket = "benji-tf-state-bucket-19th"

  tags = {
    Name        = "benji-tf-state-bucket-19th"
    Project = "DevOps2025"
  }
}

resource "aws_s3_bucket_public_access_block" "test" {
  bucket = aws_s3_bucket.test.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}