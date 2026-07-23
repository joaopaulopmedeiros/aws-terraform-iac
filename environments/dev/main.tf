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
