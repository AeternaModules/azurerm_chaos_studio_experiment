output "chaos_studio_experiments_id" {
  description = "Map of id values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chaos_studio_experiments_identity" {
  description = "Map of identity values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "chaos_studio_experiments_location" {
  description = "Map of location values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chaos_studio_experiments_name" {
  description = "Map of name values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chaos_studio_experiments_resource_group_name" {
  description = "Map of resource_group_name values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "chaos_studio_experiments_selectors" {
  description = "Map of selectors values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.selectors if v.selectors != null && length(v.selectors) > 0 }
}
output "chaos_studio_experiments_steps" {
  description = "Map of steps values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.steps if v.steps != null && length(v.steps) > 0 }
}

