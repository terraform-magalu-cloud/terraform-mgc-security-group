output "name" {
  description = "Name of security group, is string"
  value       = mgc_network_security_groups.this[0].name
}

output "id" {
  description = "ID this resource, is string similar uuid"
  value       = mgc_network_security_groups.this[0].id
}
