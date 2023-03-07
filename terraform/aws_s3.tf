# Create S3 Bucket
resource "aws_s3_bucket" "www_bucket" {
  bucket = var.bucket_name

  tags = var.common_tags
}

# Configure static website hosting 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration
resource "aws_s3_bucket_website_configuration" "bucket" {
  bucket = var.bucket_name

  index_document {
    suffix = "Home.html"
  }

  error_document {
    key = "error.html"
  }
}

# Add bucket policy 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy
resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = var.bucket_name
  policy = templatefile("s3-policy.json", { bucket = var.bucket_name })
}

# Object ownership
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = var.bucket_name

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# Provides a S3 bucket server-side encryption configuration resource.
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = var.bucket_name
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}
