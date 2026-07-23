variable "project_name" {
  description = "Project name, used as a prefix for resource names"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "bucket_name" {
  description = "Base bucket name (without project/environment prefix)"
  type        = string
}

variable "versioning_enabled" {
  description = "If true, enables versioning on the bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Default tags applied to resources"
  type        = map(string)
  default     = {}
}
