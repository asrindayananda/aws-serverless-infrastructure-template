# Input variable definitions

variable "aws_region" {
  description = "AWS region for all resources."
  type    = string
  default = "us-east-1"
}

variable "s3_lambda_bucket_name" {
  description = "Application name"
  type    = string
  default = "serverless-infrastructure-template-azcodez-dev"
}
