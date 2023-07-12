# 1. Initial configuration aws-credentials & env variables
provider "aws" {
	shared_config_files      = [var.SHARED_CONFIG_FILES]
  shared_credentials_files = [var.SHARED_CREDENTIALS_FILES]
  profile                  = var.PROFILE
}

variable "SHARED_CONFIG_FILES" {
	description = "SHARED_CONFIG_FILES"
	type = string
}

variable "SHARED_CREDENTIALS_FILES" {
	description = "SHARED_CREDENTIALS_FILES"
	type = string
}

variable "PROFILE" {
	description = "PROFILE"
	type = string
}

# 2. Start creating resources E.g.
resource "aws_s3_bucket" "sample_s3_bucket" {
  bucket = "sample_s3_bucket"

  tags = {
    Name        = "sample_s3_bucket"
    Environment = "sandbox"
  }
}