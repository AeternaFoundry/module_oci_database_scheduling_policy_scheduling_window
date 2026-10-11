resource "oci_database_scheduling_policy_scheduling_window" "database_scheduling_policy_scheduling_windows" {
  for_each = var.database_scheduling_policy_scheduling_windows

  scheduling_policy_id = each.value.scheduling_policy_id
  compartment_id       = each.value.compartment_id
  defined_tags         = each.value.defined_tags
  freeform_tags        = each.value.freeform_tags

  window_preference {
    dynamic "days_of_week" {
      for_each = each.value.window_preference.days_of_week
      content {
        name = days_of_week.value.name
      }
    }
    duration             = each.value.window_preference.duration
    is_enforced_duration = each.value.window_preference.is_enforced_duration
    dynamic "months" {
      for_each = each.value.window_preference.months
      content {
        name = months.value.name
      }
    }
    start_time     = each.value.window_preference.start_time
    weeks_of_month = each.value.window_preference.weeks_of_month
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

