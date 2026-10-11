resource "google_app_engine_domain_mapping" "app_engine_domain_mappings" {
  for_each = var.app_engine_domain_mappings

  domain_name       = each.value.domain_name
  deletion_policy   = each.value.deletion_policy
  override_strategy = each.value.override_strategy
  project           = each.value.project

  dynamic "ssl_settings" {
    for_each = each.value.ssl_settings != null ? [each.value.ssl_settings] : []
    content {
      certificate_id      = ssl_settings.value.certificate_id
      ssl_management_type = ssl_settings.value.ssl_management_type
    }
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

