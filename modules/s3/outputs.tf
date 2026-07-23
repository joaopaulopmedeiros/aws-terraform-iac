output "bucket_id" {
  description = "ID (name) of the created bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN of the created bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_regional_domain_name" {
  description = "Regional domain name of the bucket (useful for CloudFront, etc.)"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}
