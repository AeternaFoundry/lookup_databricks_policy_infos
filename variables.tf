variable "policy_infos_lookup" {
  description = <<EOT
Map of policy_infos_lookup, attributes below
Required:
    - on_securable_fullname
    - on_securable_type
Optional:
    - include_inherited
    - max_results
    - provider_config
EOT

  type = map(object({
    on_securable_fullname = string
    on_securable_type     = string
    include_inherited     = optional(bool)
    max_results           = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

