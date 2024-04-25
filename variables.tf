variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket used for Terraform state."
  default     = "terraform-state"
}

variable "table_name" {
  type        = string
  description = "The name of the DynamoDB Table used for Terraform state locks."
  default     = "terraform-state-locks"
}
