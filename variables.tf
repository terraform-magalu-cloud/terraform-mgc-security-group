variable "create" {
  description = "Defines whether resource will be created or not"
  default     = true
  type        = bool
}

variable "name" {
  description = "Defines the name of resource"
  type        = string
  validation {
    condition     = length(var.name) >= 5
    error_message = "minimum string length is 5"
  }
}

variable "rules" {
  description = "Defines rules of security group: map of map"
  type = list(object({
    description = string
    egress      = bool
    ipv         = number
    port_min    = number
    port_max    = number
    protocol    = string
    cidr        = string
  }))
}
variable "description" {
  description = "Short description about this security group to identify"
  default     = ""
  type        = string
}