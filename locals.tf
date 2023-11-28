locals {
  account_id  = data.aws_caller_identity.current.account_id
  region      = data.aws_region.current.name
  bucket_name = "${local.account_id}-${local.region}-terraform-state"
  table_name  = "${local.account_id}-${local.region}-terraform-state-locks"
}
