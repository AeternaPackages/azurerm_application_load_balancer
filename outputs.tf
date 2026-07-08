# --- azurerm_application_load_balancer ---
output "application_load_balancers" {
  description = "All application_load_balancer resources"
  value       = module.application_load_balancers.application_load_balancers
}
output "application_load_balancers_location" {
  description = "List of location values across all application_load_balancers"
  value       = [for k, v in module.application_load_balancers.application_load_balancers : v.location]
}
output "application_load_balancers_name" {
  description = "List of name values across all application_load_balancers"
  value       = [for k, v in module.application_load_balancers.application_load_balancers : v.name]
}
output "application_load_balancers_primary_configuration_endpoint" {
  description = "List of primary_configuration_endpoint values across all application_load_balancers"
  value       = [for k, v in module.application_load_balancers.application_load_balancers : v.primary_configuration_endpoint]
}
output "application_load_balancers_resource_group_name" {
  description = "List of resource_group_name values across all application_load_balancers"
  value       = [for k, v in module.application_load_balancers.application_load_balancers : v.resource_group_name]
}
output "application_load_balancers_tags" {
  description = "List of tags values across all application_load_balancers"
  value       = [for k, v in module.application_load_balancers.application_load_balancers : v.tags]
}


# --- azurerm_application_load_balancer_frontend ---
output "application_load_balancer_frontends" {
  description = "All application_load_balancer_frontend resources"
  value       = module.application_load_balancer_frontends.application_load_balancer_frontends
}
output "application_load_balancer_frontends_application_load_balancer_id" {
  description = "List of application_load_balancer_id values across all application_load_balancer_frontends"
  value       = [for k, v in module.application_load_balancer_frontends.application_load_balancer_frontends : v.application_load_balancer_id]
}
output "application_load_balancer_frontends_fully_qualified_domain_name" {
  description = "List of fully_qualified_domain_name values across all application_load_balancer_frontends"
  value       = [for k, v in module.application_load_balancer_frontends.application_load_balancer_frontends : v.fully_qualified_domain_name]
}
output "application_load_balancer_frontends_name" {
  description = "List of name values across all application_load_balancer_frontends"
  value       = [for k, v in module.application_load_balancer_frontends.application_load_balancer_frontends : v.name]
}
output "application_load_balancer_frontends_tags" {
  description = "List of tags values across all application_load_balancer_frontends"
  value       = [for k, v in module.application_load_balancer_frontends.application_load_balancer_frontends : v.tags]
}


# --- azurerm_application_load_balancer_security_policy ---
output "application_load_balancer_security_policies" {
  description = "All application_load_balancer_security_policy resources"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies
}
output "application_load_balancer_security_policies_application_load_balancer_id" {
  description = "List of application_load_balancer_id values across all application_load_balancer_security_policies"
  value       = [for k, v in module.application_load_balancer_security_policies.application_load_balancer_security_policies : v.application_load_balancer_id]
}
output "application_load_balancer_security_policies_location" {
  description = "List of location values across all application_load_balancer_security_policies"
  value       = [for k, v in module.application_load_balancer_security_policies.application_load_balancer_security_policies : v.location]
}
output "application_load_balancer_security_policies_name" {
  description = "List of name values across all application_load_balancer_security_policies"
  value       = [for k, v in module.application_load_balancer_security_policies.application_load_balancer_security_policies : v.name]
}
output "application_load_balancer_security_policies_tags" {
  description = "List of tags values across all application_load_balancer_security_policies"
  value       = [for k, v in module.application_load_balancer_security_policies.application_load_balancer_security_policies : v.tags]
}
output "application_load_balancer_security_policies_web_application_firewall_policy_id" {
  description = "List of web_application_firewall_policy_id values across all application_load_balancer_security_policies"
  value       = [for k, v in module.application_load_balancer_security_policies.application_load_balancer_security_policies : v.web_application_firewall_policy_id]
}


# --- azurerm_application_load_balancer_subnet_association ---
output "application_load_balancer_subnet_associations" {
  description = "All application_load_balancer_subnet_association resources"
  value       = module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations
}
output "application_load_balancer_subnet_associations_application_load_balancer_id" {
  description = "List of application_load_balancer_id values across all application_load_balancer_subnet_associations"
  value       = [for k, v in module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations : v.application_load_balancer_id]
}
output "application_load_balancer_subnet_associations_name" {
  description = "List of name values across all application_load_balancer_subnet_associations"
  value       = [for k, v in module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations : v.name]
}
output "application_load_balancer_subnet_associations_subnet_id" {
  description = "List of subnet_id values across all application_load_balancer_subnet_associations"
  value       = [for k, v in module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations : v.subnet_id]
}
output "application_load_balancer_subnet_associations_tags" {
  description = "List of tags values across all application_load_balancer_subnet_associations"
  value       = [for k, v in module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations : v.tags]
}



