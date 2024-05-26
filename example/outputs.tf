output "name" {
  description = "name of sg"
  value = module.example.name
}

output "id" {
  description = "id of sg"
  value = module.example.id
}

output "rules" {
  description = "list rules sg"
  value = module.example.rules
}