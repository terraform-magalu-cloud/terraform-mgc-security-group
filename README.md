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
| <a name="input_description"></a> [description](#input\_description) | Short description about this security group to identify | `string` | `""` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | Defines rules of security group: map of map | `any` | `{}` | no |
| <a name="input_validate_quota"></a> [validate\_quota](#input\_validate\_quota) | Check quota before create resource | `bool` | `true` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Determine if wait resource will be created | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Timestamp when this resource was created |
| <a name="output_id"></a> [id](#output\_id) | ID this resource, is string similar uuid |
| <a name="output_is_default"></a> [is\_default](#output\_is\_default) | Boolean value say if this SG is default or not |
| <a name="output_name"></a> [name](#output\_name) | Name of security group, is string |
| <a name="output_rules"></a> [rules](#output\_rules) | All rules this security group |
| <a name="output_status"></a> [status](#output\_status) | Status this VPC |
| <a name="output_updated"></a> [updated](#output\_updated) | Timestamp when this resource was updated |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of the VPC that security group is connected |