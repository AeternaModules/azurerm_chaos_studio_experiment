resource "azurerm_chaos_studio_experiment" "chaos_studio_experiments" {
  for_each = var.chaos_studio_experiments

  location            = each.value.location
  name                = each.value.name
  resource_group_name = each.value.resource_group_name

  selectors {
    chaos_studio_target_ids = each.value.selectors.chaos_studio_target_ids
    name                    = each.value.selectors.name
  }

  steps {
    branch {
      actions {
        action_type   = each.value.steps.branch.actions.action_type
        duration      = each.value.steps.branch.actions.duration
        parameters    = each.value.steps.branch.actions.parameters
        selector_name = each.value.steps.branch.actions.selector_name
        urn           = each.value.steps.branch.actions.urn
      }
      name = each.value.steps.branch.name
    }
    name = each.value.steps.name
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

