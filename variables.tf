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
    selectors = object({
      chaos_studio_target_ids = list(string)
      name                    = string
    })
    steps = object({
      branch = object({
        actions = object({
          action_type   = string
          duration      = optional(string)
          parameters    = optional(map(string))
          selector_name = optional(string)
          urn           = optional(string)
        })
        name = string
      })
      name = string
    })
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
}

