variable "application_load_balancers" {
  description = <<EOT
Map of application_load_balancers, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
Nested application_load_balancer_frontends (azurerm_application_load_balancer_frontend):
    Required:
        - name
    Optional:
        - tags
Nested application_load_balancer_security_policies (azurerm_application_load_balancer_security_policy):
    Required:
        - location
        - name
        - web_application_firewall_policy_id
    Optional:
        - tags
Nested application_load_balancer_subnet_associations (azurerm_application_load_balancer_subnet_association):
    Required:
        - name
        - subnet_id
    Optional:
        - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    application_load_balancer_frontends = optional(map(object({
      name = string
      tags = optional(map(string))
    })))
    application_load_balancer_security_policies = optional(map(object({
      location                           = string
      name                               = string
      web_application_firewall_policy_id = string
      tags                               = optional(map(string))
    })))
    application_load_balancer_subnet_associations = optional(map(object({
      name      = string
      subnet_id = string
      tags      = optional(map(string))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.application_load_balancers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.application_load_balancers : [for kk in keys(coalesce(v0.application_load_balancer_frontends, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.application_load_balancers : [for kk in keys(coalesce(v0.application_load_balancer_security_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.application_load_balancers : [for kk in keys(coalesce(v0.application_load_balancer_subnet_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
