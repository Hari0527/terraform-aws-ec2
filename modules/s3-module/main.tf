resource "aws_s3_bucket" "g" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = var.bucket_name
    Environment = "prod"
  }
}