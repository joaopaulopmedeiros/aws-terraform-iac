output "s3_bucket_id" {
  description = "Name of the created S3 bucket"
  value       = module.s3.bucket_id
}

output "s3_bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = module.s3.bucket_arn
}

output "sqs_queue_urls" {
  description = "Map of queue name -> queue URL"
  value       = { for k, v in module.sqs : k => v.queue_id }
}

output "sqs_queue_arns" {
  description = "Map of queue name -> queue ARN"
  value       = { for k, v in module.sqs : k => v.queue_arn }
}

output "sqs_dlq_arns" {
  description = "Map of queue name -> DLQ ARN (null if that queue has no DLQ)"
  value       = { for k, v in module.sqs : k => v.dlq_arn }
}
