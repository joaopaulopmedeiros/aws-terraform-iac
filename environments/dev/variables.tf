variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name, used as a prefix for resource names"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "Default tags applied to all resources via the provider"
  type        = map(string)
  default     = {}
}

# s3
variable "s3_bucket_name" {
  description = "Base name for the S3 bucket"
  type        = string
}

variable "sqs_queues" {
  description = "Map of SQS queues to create"
  type = map(object({
    fifo_queue                 = optional(bool, false)
    visibility_timeout_seconds = optional(number, 30)
    receive_wait_time_seconds  = optional(number, 10)
    create_dlq                 = optional(bool, true)
    max_receive_count          = optional(number, 5)
  }))
  default = {}
}