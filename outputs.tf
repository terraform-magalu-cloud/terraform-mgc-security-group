output "name" {
  description = "Name of security group, is string"
  value       = mgc_network_security_groups.this[0].name
}

output "id" {
  description = "ID this resource, is string similar uuid"
  value       = mgc_network_security_groups.this[0].id
}

output "rules" {
  description = "All rules this security group"
  value       = mgc_network_security_groups.this[0].rules
}

output "created_at" {
  description = "Timestamp when this resource was created"
  value       = mgc_network_security_groups.this[0].created_at
}

output "vpc_id" {
  description = "ID of the VPC that security group is connected "
  value       = mgc_network_security_groups.this[0].vpc_id
}

output "updated" {
  description = "Timestamp when this resource was updated"
  value       = mgc_network_security_groups.this[0].vpc_id
}

output "is_default" {
  description = "Boolean value say if this SG is default or not"
  value       = mgc_network_security_groups.this[0].is_default
}

output "status" {
  description = "Status this VPC"
  value       = mgc_network_security_groups.this[0].status
}