output "name" {
  description = "The name of the security group."
  value       = mgc_network_security_groups.this[0].name
}

output "id" {
  description = "The unique identifier of the security group."
  value       = mgc_network_security_groups.this[0].id
}

output "rules" {
  description = "The list of rules associated with the security group."
  value       = mgc_network_security_groups_rules.this
}
