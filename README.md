## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.1 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | ~> 0.44.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.44.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mgc_network_security_groups.this](https://registry.terraform.io/providers/MagaluCloud/mgc/latest/docs/resources/network_security_groups) | resource |
| [mgc_network_security_groups_rules.this](https://registry.terraform.io/providers/MagaluCloud/mgc/latest/docs/resources/network_security_groups_rules) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the security group. Must be unique. | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Controls if the security group and its rules should be created. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A brief description of the security group's purpose. | `string` | `"Managed by Terraform"` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | A list of objects representing the security group rules to be created.<br>Each object in the list must contain the following attributes:<br>- description: (string) A description for the rule.<br>- egress:      (bool) Set to 'true' for an egress rule, 'false' for ingress.<br>- ipv:         (number) The IP version, either 4 or 6.<br>- port\_min:    (number) The minimum port number for the rule.<br>- port\_max:    (number) The maximum port number for the rule.<br>- protocol:    (string) The protocol (e.g., 'tcp', 'udp', 'icmp').<br>- cidr:        (string) The remote IP CIDR block. | <pre>list(object({<br>    description = string<br>    egress      = bool<br>    ipv         = number<br>    port_min    = number<br>    port_max    = number<br>    protocol    = string<br>    cidr        = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The unique identifier of the security group. |
| <a name="output_name"></a> [name](#output\_name) | The name of the security group. |
| <a name="output_rules"></a> [rules](#output\_rules) | The list of rules associated with the security group. |
