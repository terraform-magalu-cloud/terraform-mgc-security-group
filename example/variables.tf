variable "name" {
  description = "name"
  default     = "example"
  type        = string
}

variable "api_key" {
  description = "API Keys are used for authentication with the Magalu Cloud API when using the Terraform provider"
  type        = string
  sensitive   = true
}