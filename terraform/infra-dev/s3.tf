resource "aws_s3_bucket" "app_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.app_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
