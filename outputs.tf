output "bucket" {
  value       = aws_s3_bucket.terraform_state.id
  description = "The name of the S3 bucket containing the Terraform state file."
}

output "dynamodb_table" {
  value       = aws_dynamodb_table.terraform_state_locks.id
  description = "The name of the DynamoDB table handling Terraform state."
}

output "encrypt" {
  value       = "true"
  description = "Whether or not the S3 bucket is encrypted."
}

output "key" {
  value       = "terraform.tfstate"
  description = "The name of the state file that will exist in the S3 bucket."
}

output "kms_key_id" {
  value       = "alias/aws/s3"
  description = "The name of the KMS key used to encrypt the S3 bucket."
}

output "region" {
  value       = local.region
  description = "The AWS region the S3 bucket is deployed to."
}
