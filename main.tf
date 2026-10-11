data "databricks_policy_infos" "policy_infos_lookup" {
  for_each = var.policy_infos_lookup

  on_securable_fullname = each.value.on_securable_fullname
  on_securable_type     = each.value.on_securable_type
  include_inherited     = each.value.include_inherited
  max_results           = each.value.max_results
  provider_config       = each.value.provider_config
}

