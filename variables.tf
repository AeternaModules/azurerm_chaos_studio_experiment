variable "chaos_studio_experiments" {
  description = <<EOT
Map of chaos_studio_experiments, attributes below
Required:
    - location
    - name
    - resource_group_name
    - selectors (block):
        - chaos_studio_target_ids (required)
        - name (required)
    - steps (block):
        - branch (required, block):
            - actions (required, block):
                - action_type (required)
                - duration (optional)
                - parameters (optional)
                - selector_name (optional)
                - urn (optional)
            - name (required)
        - name (required)
Optional:
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    selectors = list(object({
      chaos_studio_target_ids = list(string)
      name                    = string
    }))
    steps = list(object({
      branch = list(object({
        actions = list(object({
          action_type   = string
          duration      = optional(string)
          parameters    = optional(map(string))
          selector_name = optional(string)
          urn           = optional(string)
        }))
        name = string
      }))
      name = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.chaos_studio_experiments : (
        length(v.selectors) >= 1
      )
    ])
    error_message = "Each selectors list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.chaos_studio_experiments : (
        length(v.steps) >= 1
      )
    ])
    error_message = "Each steps list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.chaos_studio_experiments : (
        alltrue([for item in v.steps : (length(item.branch) >= 1)])
      )
    ])
    error_message = "Each branch list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.chaos_studio_experiments : (
        alltrue([for item in v.steps : (length(item.actions) >= 1)])
      )
    ])
    error_message = "Each actions list must contain at least 1 items"
  }
}

