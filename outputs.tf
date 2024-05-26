output "sg_name" {
  value = mgc_network_security_groups.this[0].name
}

output "sg_id" {
  value = mgc_network_security_groups.this[0].id
}

output "sg_rules" {
  value = mgc_network_security_groups.this[0].rules
}

output "create_at" {
  value = mgc_network_security_groups.this[0].create_at
  
}