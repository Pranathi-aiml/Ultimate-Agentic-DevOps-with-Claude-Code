output "cloudfront_distribution_id" {
  description = "ID of the CloudFront distribution."
  value       = aws_cloudfront_distribution.website.id
}

output "cloudfront_domain_name" {
  description = "Default domain name of the CloudFront distribution."
  value       = aws_cloudfront_distribution.website.domain_name
}

output "s3_bucket_name" {
  description = "Name of the private S3 website bucket."
  value       = aws_s3_bucket.website.id
}

output "s3_bucket_arn" {
  description = "ARN of the private S3 website bucket."
  value       = aws_s3_bucket.website.arn
}