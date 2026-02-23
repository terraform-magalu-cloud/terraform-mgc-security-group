output "name" {
  description = "The name of the created security group."
  value       = module.example.name
}

output "id" {
  description = "The ID of the created security group."
  value       = module.example.id
}

output "rules" {
  description = "The rules associated with the created security group."
  value       = module.example.rules
}
