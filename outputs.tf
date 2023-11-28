output "bucket" {
  value = aws_s3_bucket.terraform_state.id
}

output "dynamodb_table" {
  value = aws_dynamodb_table.terraform_state_locks.id
}

output "encrypt" {
  value = "true"
}

output "key" {
  value = "terraform.tfstate"
}

output "kms_key_id" {
  value = "alias/aws/s3"
}

output "region" {
  value = local.region
}
