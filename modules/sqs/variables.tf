variable "project_name" {
  description = "Project name, used as a prefix for resource names"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "queue_name" {
  description = "Base queue name (without project/environment prefix, without .fifo suffix)"
  type        = string
}

variable "tags" {
  description = "Default tags applied to resources"
  type        = map(string)
  default     = {}
}

variable "fifo_queue" {
  description = "If true, creates a FIFO queue instead of a standard queue"
  type        = bool
  default     = false
}

variable "content_based_deduplication" {
  description = "If true, enables content-based deduplication (FIFO queues only)"
  type        = bool
  default     = false
}

variable "visibility_timeout_seconds" {
  description = "Time a message stays invisible after being received, before returning to the queue"
  type        = number
  default     = 30
}

variable "message_retention_seconds" {
  description = "How long messages are retained in the queue (in seconds). Default: 4 days"
  type        = number
  default     = 345600
}

variable "max_message_size" {
  description = "Maximum message size in bytes (up to 262144 = 256 KB)"
  type        = number
  default     = 262144
}

variable "delay_seconds" {
  description = "Time in seconds that delivery of all messages is delayed"
  type        = number
  default     = 0
}

variable "receive_wait_time_seconds" {
  description = "Enables long polling when > 0 (reduces empty responses and cost)"
  type        = number
  default     = 0
}

variable "create_dlq" {
  description = "If true, creates a Dead Letter Queue and links it via redrive policy"
  type        = bool
  default     = true
}

variable "max_receive_count" {
  description = "Number of times a message can be received before being sent to the DLQ"
  type        = number
  default     = 5
}

variable "dlq_message_retention_seconds" {
  description = "How long messages are retained in the DLQ (in seconds). Default: 14 days (max)"
  type        = number
  default     = 1209600
}

variable "queue_policy_json" {
  description = "Custom JSON policy for the queue (e.g. to allow SNS/S3/EventBridge to send messages). Leave null to skip."
  type        = string
  default     = null
}
