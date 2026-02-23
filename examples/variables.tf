variable "name" {
  description = "The name prefix for the security group resources."
  default     = "example"
  type        = string
}

variable "api_key" {
  description = "The API Key for authentication with the Magalu Cloud API."
  type        = string
  sensitive   = true
}
