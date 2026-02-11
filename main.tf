resource "azurerm_chaos_studio_experiment" "chaos_studio_experiments" {
  for_each = var.chaos_studio_experiments

  location            = each.value.location
  name                = each.value.name
  resource_group_name = each.value.resource_group_name

  dynamic "selectors" {
    for_each = each.value.selectors
    content {
      chaos_studio_target_ids = selectors.value.chaos_studio_target_ids
      name                    = selectors.value.name
    }
  }

  dynamic "steps" {
    for_each = each.value.steps
    content {
      dynamic "branch" {
        for_each = steps.value.branch
        content {
          dynamic "actions" {
            for_each = branch.value.actions
            content {
              action_type   = actions.value.action_type
              duration      = actions.value.duration
              parameters    = actions.value.parameters
              selector_name = actions.value.selector_name
              urn           = actions.value.urn
            }
          }
          name = branch.value.name
        }
      }
      name = steps.value.name
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

