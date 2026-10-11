output "app_engine_domain_mappings_id" {
  description = "Map of id values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no id are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_domain_mappings_deletion_policy" {
  description = "Map of deletion_policy values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "app_engine_domain_mappings_domain_name" {
  description = "Map of domain_name values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no domain_name are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "app_engine_domain_mappings_name" {
  description = "Map of name values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no name are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_engine_domain_mappings_override_strategy" {
  description = "Map of override_strategy values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no override_strategy are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.override_strategy if v.override_strategy != null && length(v.override_strategy) > 0 }
}
output "app_engine_domain_mappings_project" {
  description = "Map of project values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no project are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "app_engine_domain_mappings_resource_records" {
  description = "Map of resource_records values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no resource_records are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => v.resource_records if v.resource_records != null && length(v.resource_records) > 0 }
}
output "app_engine_domain_mappings_ssl_settings" {
  description = "Map of ssl_settings values across all app_engine_domain_mappings, keyed the same as var.app_engine_domain_mappings except keys with no ssl_settings are omitted"
  value       = { for k, v in google_app_engine_domain_mapping.app_engine_domain_mappings : k => one(v.ssl_settings) if v.ssl_settings != null && length(v.ssl_settings) > 0 }
}

