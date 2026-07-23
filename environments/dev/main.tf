locals {
  common_tags = merge(var.default_tags, {
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "terraform"
  })
}

module "s3" {
  source = "../../modules/s3"

  project_name       = var.project_name
  environment        = var.environment
  bucket_name        = var.s3_bucket_name
  versioning_enabled = true
  tags               = local.common_tags
}

module "sqs" {
  source   = "../../modules/sqs"
  for_each = var.sqs_queues

  project_name = var.project_name
  environment  = var.environment
  queue_name   = each.key
  tags         = local.common_tags

  fifo_queue                 = each.value.fifo_queue
  visibility_timeout_seconds = each.value.visibility_timeout_seconds
  receive_wait_time_seconds  = each.value.receive_wait_time_seconds

  create_dlq        = each.value.create_dlq
  max_receive_count = each.value.max_receive_count
}
