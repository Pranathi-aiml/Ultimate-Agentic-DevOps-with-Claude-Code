# First run `terraform init` without a backend and create the website resources.
# Create the S3 state bucket separately, then uncomment this block and run
# `terraform init -migrate-state` to move the local state into the S3 backend.
# Replace the bucket name with the name of the state bucket you created.
#
# terraform {
#   backend "s3" {
#     bucket  = "replace-with-your-terraform-state-bucket"
#     key     = "portfolio-site/terraform.tfstate"
#     region  = "ap-south-1"
#     encrypt = true
#   }
# }