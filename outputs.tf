output "policy_infos_lookup_include_inherited" {
  description = "Map of include_inherited values across all policy_infos_lookup, keyed the same as var.policy_infos_lookup except keys with no include_inherited are omitted"
  value       = { for k, v in data.databricks_policy_infos.policy_infos_lookup : k => v.include_inherited if v.include_inherited != null }
}
output "policy_infos_lookup_max_results" {
  description = "Map of max_results values across all policy_infos_lookup, keyed the same as var.policy_infos_lookup except keys with no max_results are omitted"
  value       = { for k, v in data.databricks_policy_infos.policy_infos_lookup : k => v.max_results if v.max_results != null }
}
output "policy_infos_lookup_on_securable_fullname" {
  description = "Map of on_securable_fullname values across all policy_infos_lookup, keyed the same as var.policy_infos_lookup except keys with no on_securable_fullname are omitted"
  value       = { for k, v in data.databricks_policy_infos.policy_infos_lookup : k => v.on_securable_fullname if v.on_securable_fullname != null && length(v.on_securable_fullname) > 0 }
}
output "policy_infos_lookup_on_securable_type" {
  description = "Map of on_securable_type values across all policy_infos_lookup, keyed the same as var.policy_infos_lookup except keys with no on_securable_type are omitted"
  value       = { for k, v in data.databricks_policy_infos.policy_infos_lookup : k => v.on_securable_type if v.on_securable_type != null && length(v.on_securable_type) > 0 }
}
output "policy_infos_lookup_policies" {
  description = "Map of policies values across all policy_infos_lookup, keyed the same as var.policy_infos_lookup except keys with no policies are omitted"
  value       = { for k, v in data.databricks_policy_infos.policy_infos_lookup : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "policy_infos_lookup_provider_config" {
  description = "Map of provider_config values across all policy_infos_lookup, keyed the same as var.policy_infos_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_policy_infos.policy_infos_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

