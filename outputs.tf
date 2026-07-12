# --- azurerm_application_load_balancer ---
output "application_load_balancers_id" {
  description = "Map of id values across all application_load_balancers, keyed the same as var.application_load_balancers"
  value       = module.application_load_balancers.application_load_balancers_id
}

output "application_load_balancers_location" {
  description = "Map of location values across all application_load_balancers, keyed the same as var.application_load_balancers"
  value       = module.application_load_balancers.application_load_balancers_location
}

output "application_load_balancers_name" {
  description = "Map of name values across all application_load_balancers, keyed the same as var.application_load_balancers"
  value       = module.application_load_balancers.application_load_balancers_name
}

output "application_load_balancers_primary_configuration_endpoint" {
  description = "Map of primary_configuration_endpoint values across all application_load_balancers, keyed the same as var.application_load_balancers"
  value       = module.application_load_balancers.application_load_balancers_primary_configuration_endpoint
}

output "application_load_balancers_resource_group_name" {
  description = "Map of resource_group_name values across all application_load_balancers, keyed the same as var.application_load_balancers"
  value       = module.application_load_balancers.application_load_balancers_resource_group_name
}

output "application_load_balancers_tags" {
  description = "Map of tags values across all application_load_balancers, keyed the same as var.application_load_balancers"
  value       = module.application_load_balancers.application_load_balancers_tags
}

# --- azurerm_application_load_balancer_frontend ---
output "application_load_balancer_frontends_id" {
  description = "Map of id values across all application_load_balancer_frontends, keyed the same as var.application_load_balancer_frontends"
  value       = module.application_load_balancer_frontends.application_load_balancer_frontends_id
}

output "application_load_balancer_frontends_application_load_balancer_id" {
  description = "Map of application_load_balancer_id values across all application_load_balancer_frontends, keyed the same as var.application_load_balancer_frontends"
  value       = module.application_load_balancer_frontends.application_load_balancer_frontends_application_load_balancer_id
}

output "application_load_balancer_frontends_fully_qualified_domain_name" {
  description = "Map of fully_qualified_domain_name values across all application_load_balancer_frontends, keyed the same as var.application_load_balancer_frontends"
  value       = module.application_load_balancer_frontends.application_load_balancer_frontends_fully_qualified_domain_name
}

output "application_load_balancer_frontends_name" {
  description = "Map of name values across all application_load_balancer_frontends, keyed the same as var.application_load_balancer_frontends"
  value       = module.application_load_balancer_frontends.application_load_balancer_frontends_name
}

output "application_load_balancer_frontends_tags" {
  description = "Map of tags values across all application_load_balancer_frontends, keyed the same as var.application_load_balancer_frontends"
  value       = module.application_load_balancer_frontends.application_load_balancer_frontends_tags
}

# --- azurerm_application_load_balancer_security_policy ---
output "application_load_balancer_security_policies_id" {
  description = "Map of id values across all application_load_balancer_security_policies, keyed the same as var.application_load_balancer_security_policies"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies_id
}

output "application_load_balancer_security_policies_application_load_balancer_id" {
  description = "Map of application_load_balancer_id values across all application_load_balancer_security_policies, keyed the same as var.application_load_balancer_security_policies"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies_application_load_balancer_id
}

output "application_load_balancer_security_policies_location" {
  description = "Map of location values across all application_load_balancer_security_policies, keyed the same as var.application_load_balancer_security_policies"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies_location
}

output "application_load_balancer_security_policies_name" {
  description = "Map of name values across all application_load_balancer_security_policies, keyed the same as var.application_load_balancer_security_policies"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies_name
}

output "application_load_balancer_security_policies_tags" {
  description = "Map of tags values across all application_load_balancer_security_policies, keyed the same as var.application_load_balancer_security_policies"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies_tags
}

output "application_load_balancer_security_policies_web_application_firewall_policy_id" {
  description = "Map of web_application_firewall_policy_id values across all application_load_balancer_security_policies, keyed the same as var.application_load_balancer_security_policies"
  value       = module.application_load_balancer_security_policies.application_load_balancer_security_policies_web_application_firewall_policy_id
}

# --- azurerm_application_load_balancer_subnet_association ---
output "application_load_balancer_subnet_associations_id" {
  description = "Map of id values across all application_load_balancer_subnet_associations, keyed the same as var.application_load_balancer_subnet_associations"
  value       = module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations_id
}

output "application_load_balancer_subnet_associations_application_load_balancer_id" {
  description = "Map of application_load_balancer_id values across all application_load_balancer_subnet_associations, keyed the same as var.application_load_balancer_subnet_associations"
  value       = module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations_application_load_balancer_id
}

output "application_load_balancer_subnet_associations_name" {
  description = "Map of name values across all application_load_balancer_subnet_associations, keyed the same as var.application_load_balancer_subnet_associations"
  value       = module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations_name
}

output "application_load_balancer_subnet_associations_subnet_id" {
  description = "Map of subnet_id values across all application_load_balancer_subnet_associations, keyed the same as var.application_load_balancer_subnet_associations"
  value       = module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations_subnet_id
}

output "application_load_balancer_subnet_associations_tags" {
  description = "Map of tags values across all application_load_balancer_subnet_associations, keyed the same as var.application_load_balancer_subnet_associations"
  value       = module.application_load_balancer_subnet_associations.application_load_balancer_subnet_associations_tags
}


