locals {
  application_load_balancers = { for k1, v1 in var.application_load_balancers : k1 => { location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  application_load_balancer_frontends = merge([
    for k1, v1 in var.application_load_balancers : {
      for k2, v2 in coalesce(v1.application_load_balancer_frontends, {}) :
      "${k1}/${k2}" => merge(v2, {
        application_load_balancer_id = module.application_load_balancers.application_load_balancers_id["${k1}"]
      })
    }
  ]...)

  application_load_balancer_security_policies = merge([
    for k1, v1 in var.application_load_balancers : {
      for k2, v2 in coalesce(v1.application_load_balancer_security_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        application_load_balancer_id = module.application_load_balancers.application_load_balancers_id["${k1}"]
      })
    }
  ]...)

  application_load_balancer_subnet_associations = merge([
    for k1, v1 in var.application_load_balancers : {
      for k2, v2 in coalesce(v1.application_load_balancer_subnet_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        application_load_balancer_id = module.application_load_balancers.application_load_balancers_id["${k1}"]
      })
    }
  ]...)
}

module "application_load_balancers" {
  source                     = "git::https://github.com/AeternaModules/azurerm_application_load_balancer.git?ref=v4.81.0"
  application_load_balancers = local.application_load_balancers
}

module "application_load_balancer_frontends" {
  source                              = "git::https://github.com/AeternaModules/azurerm_application_load_balancer_frontend.git?ref=v4.81.0"
  application_load_balancer_frontends = local.application_load_balancer_frontends
  depends_on                          = [module.application_load_balancers]
}

module "application_load_balancer_security_policies" {
  source                                      = "git::https://github.com/AeternaModules/azurerm_application_load_balancer_security_policy.git?ref=v4.81.0"
  application_load_balancer_security_policies = local.application_load_balancer_security_policies
  depends_on                                  = [module.application_load_balancers]
}

module "application_load_balancer_subnet_associations" {
  source                                        = "git::https://github.com/AeternaModules/azurerm_application_load_balancer_subnet_association.git?ref=v4.81.0"
  application_load_balancer_subnet_associations = local.application_load_balancer_subnet_associations
  depends_on                                    = [module.application_load_balancers]
}

