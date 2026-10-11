variable "app_engine_domain_mappings" {
  description = <<EOT
Map of app_engine_domain_mappings, attributes below
Required:
    - domain_name
Optional:
    - deletion_policy
    - override_strategy
    - project
    - ssl_settings (block):
        - certificate_id (optional)
        - ssl_management_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    domain_name       = string
    deletion_policy   = optional(string)
    override_strategy = optional(string)
    project           = optional(string)
    ssl_settings = optional(object({
      certificate_id      = optional(string)
      ssl_management_type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

