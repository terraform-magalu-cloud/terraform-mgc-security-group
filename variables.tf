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
  description = "Lista de objetos representando as regras de segurança. Campos egress, ipv e protocol possuem valores padrão."
  
  type = list(object({
    description = string
    egress      = optional(bool, false)     # Default para Ingress
    ipv         = optional(number, 4)       # Default para IPv4
    port_min    = number
    port_max    = number
    protocol    = optional(string, "tcp")   # Default para TCP
    cidr        = string
  }))
  default = []

  # 1. Validação de Versão de IP
  validation {
    condition = alltrue([
      for r in var.rules : contains([4, 6], r.ipv)
    ])
    error_message = "O atributo 'ipv' deve ser obrigatoriamente 4 ou 6."
  }

  # 2. Validação de Protocolo (Case Insensitive)
  validation {
    condition = alltrue([
      for r in var.rules : contains(["tcp", "udp", "icmp", "all"], lower(r.protocol))
    ])
    error_message = "O protocolo deve ser 'tcp', 'udp', 'icmp' ou 'all'."
  }

  # 3. Validação de Consistência de Portas
  validation {
    condition = alltrue([
      for r in var.rules : r.port_min <= r.port_max && r.port_min >= 0 && r.port_max <= 65535
    ])
    error_message = "Porta mínima não pode ser maior que a máxima e devem estar no intervalo 0-65535."
  }

  # 4. Validação Básica de Formato CIDR (Opcional, mas recomendado)
  validation {
    condition = alltrue([
      for r in var.rules : can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$|^([a-fA-F0-9:]+)/[0-9]{1,3}$", r.cidr))
    ])
    error_message = "O campo 'cidr' deve estar em um formato válido (ex: 0.0.0.0/0 ou 2001:db8::/32)."
  }
}
