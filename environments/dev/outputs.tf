output "s3_bucket_id" {
  description = "Name of the created S3 bucket"
  value       = module.s3.bucket_id
}

output "s3_bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = module.s3.bucket_arn
}
