# Input variable definitions

variable "aws_region" {
  description = "AWS region for all resources."

  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Bucket name for travel buddy lambda"

  type    = string
  default = "serverless-infrastructure-template-azcodez-dev"
}
