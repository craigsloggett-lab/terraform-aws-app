terraform {
  required_version = "~> 1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
    environment = {
      source  = "registry.terraform.io/morganpeat/environment"
      version = "0.2.7"
    }
  }
}
