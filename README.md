## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.1 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | >= 0.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.45.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mgc_network_security_groups.this](https://registry.terraform.io/providers/MagaluCloud/mgc/latest/docs/resources/network_security_groups) | resource |
| [mgc_network_security_groups_rules.this](https://registry.terraform.io/providers/MagaluCloud/mgc/latest/docs/resources/network_security_groups_rules) | resource |
| [terraform_data.validate_rules](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the security group. Must be unique. | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Controls if the security group and its rules should be created. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A brief description of the security group's purpose. | `string` | `"Managed by Terraform"` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | Lista de objetos representando as regras de segurança. Campos egress, ipv e protocol possuem valores padrão. | <pre>list(object({<br>    description = string<br>    egress      = optional(bool, false) # Default para Ingress<br>    ipv         = optional(number, 4)   # Default para IPv4<br>    port_min    = number<br>    port_max    = number<br>    protocol    = optional(string, "tcp") # Default para TCP<br>    cidr        = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The unique identifier of the security group. |
| <a name="output_name"></a> [name](#output\_name) | The name of the security group. |
| <a name="output_rules"></a> [rules](#output\_rules) | The list of rules associated with the security group. |
