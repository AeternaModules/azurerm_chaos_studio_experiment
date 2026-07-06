output "chaos_studio_experiments" {
  description = "All chaos_studio_experiment resources"
  value       = azurerm_chaos_studio_experiment.chaos_studio_experiments
}
output "chaos_studio_experiments_identity" {
  description = "List of identity values across all chaos_studio_experiments"
  value       = [for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : v.identity]
}
output "chaos_studio_experiments_location" {
  description = "List of location values across all chaos_studio_experiments"
  value       = [for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : v.location]
}
output "chaos_studio_experiments_name" {
  description = "List of name values across all chaos_studio_experiments"
  value       = [for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : v.name]
}
output "chaos_studio_experiments_resource_group_name" {
  description = "List of resource_group_name values across all chaos_studio_experiments"
  value       = [for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : v.resource_group_name]
}
output "chaos_studio_experiments_selectors" {
  description = "List of selectors values across all chaos_studio_experiments"
  value       = [for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : v.selectors]
}
output "chaos_studio_experiments_steps" {
  description = "List of steps values across all chaos_studio_experiments"
  value       = [for k, v in azurerm_chaos_studio_experiment.chaos_studio_experiments : v.steps]
}

