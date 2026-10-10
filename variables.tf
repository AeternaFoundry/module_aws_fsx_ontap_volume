variable "fsx_ontap_volumes" {
  description = <<EOT
Map of fsx_ontap_volumes, attributes below
Required:
    - name
    - storage_virtual_machine_id
Optional:
    - bypass_snaplock_enterprise_retention
    - copy_tags_to_backups
    - final_backup_tags
    - junction_path
    - ontap_volume_type
    - region
    - security_style
    - size_in_bytes
    - size_in_megabytes
    - skip_final_backup
    - snapshot_policy
    - storage_efficiency_enabled
    - tags
    - tags_all
    - volume_style
    - volume_type
    - aggregate_configuration (block):
        - aggregates (optional)
        - constituents_per_aggregate (optional)
    - snaplock_configuration (block):
        - audit_log_volume (optional)
        - autocommit_period (optional, block):
            - type (optional)
            - value (optional)
        - privileged_delete (optional)
        - retention_period (optional, block):
            - default_retention (optional, block):
                - type (optional)
                - value (optional)
            - maximum_retention (optional, block):
                - type (optional)
                - value (optional)
            - minimum_retention (optional, block):
                - type (optional)
                - value (optional)
        - snaplock_type (required)
        - volume_append_mode_enabled (optional)
    - tiering_policy (block):
        - cooling_period (optional)
        - name (optional)
EOT

  type = map(object({
    name                                 = string
    storage_virtual_machine_id           = string
    tags_all                             = optional(map(string))
    tags                                 = optional(map(string))
    storage_efficiency_enabled           = optional(bool)
    snapshot_policy                      = optional(string)
    skip_final_backup                    = optional(bool)
    size_in_megabytes                    = optional(number)
    size_in_bytes                        = optional(string)
    security_style                       = optional(string)
    region                               = optional(string)
    ontap_volume_type                    = optional(string)
    junction_path                        = optional(string)
    final_backup_tags                    = optional(map(string))
    copy_tags_to_backups                 = optional(bool)
    bypass_snaplock_enterprise_retention = optional(bool)
    volume_style                         = optional(string)
    volume_type                          = optional(string)
    aggregate_configuration = optional(object({
      aggregates                 = optional(list(string))
      constituents_per_aggregate = optional(number)
    }))
    snaplock_configuration = optional(object({
      audit_log_volume = optional(bool)
      autocommit_period = optional(object({
        type  = optional(string)
        value = optional(number)
      }))
      privileged_delete = optional(string)
      retention_period = optional(object({
        default_retention = optional(object({
          type  = optional(string)
          value = optional(number)
        }))
        maximum_retention = optional(object({
          type  = optional(string)
          value = optional(number)
        }))
        minimum_retention = optional(object({
          type  = optional(string)
          value = optional(number)
        }))
      }))
      snaplock_type              = string
      volume_append_mode_enabled = optional(bool)
    }))
    tiering_policy = optional(object({
      cooling_period = optional(number)
      name           = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        v.aggregate_configuration == null || (v.aggregate_configuration.aggregates == null || (alltrue([for x in v.aggregate_configuration.aggregates : can(regex("^(aggr[0-9]{1,2})$", x))])))
      )
    ])
    error_message = "Each value must be in the format aggrX, where X is a number between 1 and the number of ha_pairs"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        v.aggregate_configuration == null || (v.aggregate_configuration.constituents_per_aggregate == null || (v.aggregate_configuration.constituents_per_aggregate >= 1 && v.aggregate_configuration.constituents_per_aggregate <= 200))
      )
    ])
    error_message = "must be between 1 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        v.junction_path == null || (length(v.junction_path) >= 1 && length(v.junction_path) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        v.size_in_megabytes == null || (v.size_in_megabytes >= 0 && v.size_in_megabytes <= 2147483647)
      )
    ])
    error_message = "must be between 0 and 2147483647"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        v.snapshot_policy == null || (length(v.snapshot_policy) >= 1 && length(v.snapshot_policy) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        length(v.storage_virtual_machine_id) >= 21 && length(v.storage_virtual_machine_id) <= 21
      )
    ])
    error_message = "must be between 21 and 21 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_ontap_volumes : (
        v.tiering_policy == null || (v.tiering_policy.cooling_period == null || (v.tiering_policy.cooling_period >= 2 && v.tiering_policy.cooling_period <= 183))
      )
    ])
    error_message = "must be between 2 and 183"
  }
  # Note: 17 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

