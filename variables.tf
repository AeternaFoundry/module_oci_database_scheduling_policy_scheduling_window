variable "database_scheduling_policy_scheduling_windows" {
  description = <<EOT
Map of database_scheduling_policy_scheduling_windows, attributes below
Required:
    - scheduling_policy_id
    - window_preference (block):
        - days_of_week (required, block):
            - name (required)
        - duration (required)
        - is_enforced_duration (required)
        - months (required, block):
            - name (required)
        - start_time (required)
        - weeks_of_month (required)
Optional:
    - compartment_id
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    scheduling_policy_id = string
    compartment_id       = optional(string)
    defined_tags         = optional(map(string))
    freeform_tags        = optional(map(string))
    window_preference = object({
      days_of_week = list(object({
        name = string
      }))
      duration             = number
      is_enforced_duration = bool
      months = list(object({
        name = string
      }))
      start_time     = string
      weeks_of_month = list(number)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_scheduling_policy_scheduling_windows : (
        length(v.window_preference.days_of_week) >= 1
      )
    ])
    error_message = "Each days_of_week list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.database_scheduling_policy_scheduling_windows : (
        length(v.window_preference.months) >= 1
      )
    ])
    error_message = "Each months list must contain at least 1 items"
  }
}

