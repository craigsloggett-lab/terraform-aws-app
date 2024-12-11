data "aws_caller_identity" "current" {}

module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.2"

  bucket = "testing-module-upgrades-bucket-00001"

  force_destroy       = true
  acceleration_status = "Suspended"
  request_payer       = "BucketOwner"

  attach_deny_insecure_transport_policy    = true
  attach_require_latest_tls_policy         = true
  attach_deny_incorrect_encryption_headers = true
  attach_deny_unencrypted_object_uploads   = true

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  control_object_ownership = true
  object_ownership         = "BucketOwnerPreferred"

  expected_bucket_owner = data.aws_caller_identity.current.account_id

  acl = "private"

  versioning = {
    status     = true
    mfa_delete = false
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "aws:kms"
      }
    }
  }
}
