variable "region" {
  description = "AWS region for the S3 bucket and provider."
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging."
  type        = string
  default     = "portfolio-site"
}

variable "environment" {
  description = "Environment name applied to resource tags and names."
  type        = string
  default     = "production"
}

variable "domain_name" {
  description = "Optional custom domain name; custom domains require an ACM certificate configuration."
  type        = string
  default     = ""
}