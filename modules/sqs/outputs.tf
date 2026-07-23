output "queue_id" {
  description = "URL of the created queue (this is what the AWS SDK calls the queue's 'id')"
  value       = aws_sqs_queue.this.id
}

output "queue_arn" {
  description = "ARN of the created queue"
  value       = aws_sqs_queue.this.arn
}

output "queue_name" {
  description = "Full name of the created queue"
  value       = aws_sqs_queue.this.name
}

output "dlq_arn" {
  description = "ARN of the Dead Letter Queue (null if not created)"
  value       = var.create_dlq ? aws_sqs_queue.dlq[0].arn : null
}

output "dlq_id" {
  description = "URL of the Dead Letter Queue (null if not created)"
  value       = var.create_dlq ? aws_sqs_queue.dlq[0].id : null
}
