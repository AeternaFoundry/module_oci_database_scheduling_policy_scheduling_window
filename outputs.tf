output "database_scheduling_policy_scheduling_windows_id" {
  description = "Map of id values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no id are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_scheduling_policy_scheduling_windows_compartment_id" {
  description = "Map of compartment_id values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_scheduling_policy_scheduling_windows_defined_tags" {
  description = "Map of defined_tags values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_scheduling_policy_scheduling_windows_display_name" {
  description = "Map of display_name values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no display_name are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_scheduling_policy_scheduling_windows_freeform_tags" {
  description = "Map of freeform_tags values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_scheduling_policy_scheduling_windows_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_scheduling_policy_scheduling_windows_scheduling_policy_id" {
  description = "Map of scheduling_policy_id values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no scheduling_policy_id are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.scheduling_policy_id if v.scheduling_policy_id != null && length(v.scheduling_policy_id) > 0 }
}
output "database_scheduling_policy_scheduling_windows_state" {
  description = "Map of state values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no state are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_scheduling_policy_scheduling_windows_time_created" {
  description = "Map of time_created values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no time_created are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_scheduling_policy_scheduling_windows_time_next_scheduling_window_starts" {
  description = "Map of time_next_scheduling_window_starts values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no time_next_scheduling_window_starts are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.time_next_scheduling_window_starts if v.time_next_scheduling_window_starts != null && length(v.time_next_scheduling_window_starts) > 0 }
}
output "database_scheduling_policy_scheduling_windows_time_updated" {
  description = "Map of time_updated values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no time_updated are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "database_scheduling_policy_scheduling_windows_window_preference" {
  description = "Map of window_preference values across all database_scheduling_policy_scheduling_windows, keyed the same as var.database_scheduling_policy_scheduling_windows except keys with no window_preference are omitted"
  value       = { for k, v in oci_database_scheduling_policy_scheduling_window.database_scheduling_policy_scheduling_windows : k => one(v.window_preference) if v.window_preference != null && length(v.window_preference) > 0 }
}

