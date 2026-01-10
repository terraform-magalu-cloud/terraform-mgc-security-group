## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.1 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | ~> 0.41.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.7.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.41.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.7.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_example"></a> [example](#module\_example) | ../ | n/a |

## Resources

| Name | Type |
|------|------|
| [mgc_network_security_groups_rules.ssh_exposed](https://registry.terraform.io/providers/MagaluCloud/mgc/latest/docs/resources/network_security_groups_rules) | resource |
| [random_string.sufix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_key"></a> [api\_key](#input\_api\_key) | The API Key for authentication with the Magalu Cloud API. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name prefix for the security group resources. | `string` | `"example"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created security group. |
| <a name="output_name"></a> [name](#output\_name) | The name of the created security group. |
| <a name="output_rules"></a> [rules](#output\_rules) | The rules associated with the created security group. |
