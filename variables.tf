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
  type        = any
  default     = {}
}

variable "validate_quota" {
  description = "Check quota before create resource"
  default     = true
  type        = bool
}

variable "wait" {
  description = "Determine if wait resource will be created"
  default     = true
  type        = bool
}
variable "description" {
  description = "Short description about this security group to identify"
  default     = ""
  type        = string
}