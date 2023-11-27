# Example App Terraform Module

An example Terraform module repository used to showcase automation and tooling.

## Key Features

- [x] Automatic dependency updates using `dependabot`.
- [x] Automatic release management using `semantic-release`.
- [x] Terraform documentation validation using `terraform-docs`.
- [x] Terraform formatting validation using `terraform fmt`.
- [x] Terraform security checks using `tfsec`.
- [x] Terraform linting with `tflint`.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/5.26.0/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors
Module is maintained with the help from [these awesome
contributors](https://github.com/craigsloggett-lab/terraform-aws-app/graphs/contributors).

## License
MIT Licensed. See
[LICENSE](https://github.com/craigsloggett-lab/terraform-aws-app/blob/main/LICENSE)
for full details.
