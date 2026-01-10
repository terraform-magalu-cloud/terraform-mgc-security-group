# variables.tf (Versão Aprimorada)

variable "create" {
  description = "Controls if the security group and its rules should be created."
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the security group. Must be unique."
  type        = string
  validation {
    condition = length(var.name) >= 5
    # Mensagem de erro aprimorada, mais clara para o usuário do módulo.
    error_message = "The security group name must be at least 5 characters long."
  }
}

variable "description" {
  description = "A brief description of the security group's purpose."
  type        = string
  default     = "Managed by Terraform" # Um default mais informativo.
}

variable "rules" {
  description = <<-EOT
    A list of objects representing the security group rules to be created.
    Each object in the list must contain the following attributes:
    - description: (string) A description for the rule.
    - egress:      (bool) Set to 'true' for an egress rule, 'false' for ingress.
    - ipv:         (number) The IP version, either 4 or 6.
    - port_min:    (number) The minimum port number for the rule.
    - port_max:    (number) The maximum port number for the rule.
    - protocol:    (string) The protocol (e.g., 'tcp', 'udp', 'icmp').
    - cidr:        (string) The remote IP CIDR block.
  EOT
  type = list(object({
    description = string
    egress      = bool
    ipv         = number
    port_min    = number
    port_max    = number
    protocol    = string
    cidr        = string
  }))
  default = [] # É uma boa prática fornecer um default vazio para listas.

  validation {
    condition = alltrue([
      for r in var.rules : contains([4, 6], r.ipv)
    ])
    error_message = "The 'ipv' attribute must be either 4 or 6."
  }

  validation {
    condition = alltrue([
      for r in var.rules : contains(["tcp", "udp", "icmp"], r.protocol)
    ])
    error_message = "The 'protocol' attribute must be 'tcp', 'udp', or 'icmp'."
  }
}
