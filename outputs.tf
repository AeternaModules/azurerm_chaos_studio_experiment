output "chaos_studio_experiments_identity" {
  description = "Map of identity values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.identity }
}
output "chaos_studio_experiments_location" {
  description = "Map of location values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.location }
}
output "chaos_studio_experiments_name" {
  description = "Map of name values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.name }
}
output "chaos_studio_experiments_resource_group_name" {
  description = "Map of resource_group_name values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.resource_group_name }
}
output "chaos_studio_experiments_selectors" {
  description = "Map of selectors values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.selectors }
}
output "chaos_studio_experiments_steps" {
  description = "Map of steps values across all chaos_studio_experiments, keyed the same as var.chaos_studio_experiments"
  value       = { for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : k => v.steps }
}

