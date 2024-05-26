## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | 0.18.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.18.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mgc_network_rules.this](https://registry.terraform.io/providers/MagaluCloud/mgc/0.18.10/docs/resources/network_rules) | resource |
| [mgc_network_security_groups.this](https://registry.terraform.io/providers/MagaluCloud/mgc/0.18.10/docs/resources/network_security_groups) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Defines the name of resource | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Defines whether resource will be created or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | value | `string` | `""` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | Defines rules of security group: map of map | `any` | `{}` | no |
| <a name="input_validate_quota"></a> [validate\_quota](#input\_validate\_quota) | Check quota before create resource | `bool` | `true` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Determine if wait resource will be created | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_create_at"></a> [create\_at](#output\_create\_at) | n/a |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | n/a |
| <a name="output_sg_name"></a> [sg\_name](#output\_sg\_name) | n/a |
| <a name="output_sg_rules"></a> [sg\_rules](#output\_sg\_rules) | n/a |