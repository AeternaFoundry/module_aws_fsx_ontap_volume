output "fsx_ontap_volumes_id" {
  description = "Map of id values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fsx_ontap_volumes_aggregate_configuration" {
  description = "Map of aggregate_configuration values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => one(v.aggregate_configuration) if v.aggregate_configuration != null && length(v.aggregate_configuration) > 0 }
}
output "fsx_ontap_volumes_arn" {
  description = "Map of arn values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fsx_ontap_volumes_bypass_snaplock_enterprise_retention" {
  description = "Map of bypass_snaplock_enterprise_retention values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.bypass_snaplock_enterprise_retention if v.bypass_snaplock_enterprise_retention != null }
}
output "fsx_ontap_volumes_copy_tags_to_backups" {
  description = "Map of copy_tags_to_backups values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.copy_tags_to_backups if v.copy_tags_to_backups != null }
}
output "fsx_ontap_volumes_file_system_id" {
  description = "Map of file_system_id values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "fsx_ontap_volumes_final_backup_tags" {
  description = "Map of final_backup_tags values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.final_backup_tags if v.final_backup_tags != null && length(v.final_backup_tags) > 0 }
}
output "fsx_ontap_volumes_flexcache_endpoint_type" {
  description = "Map of flexcache_endpoint_type values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.flexcache_endpoint_type if v.flexcache_endpoint_type != null && length(v.flexcache_endpoint_type) > 0 }
}
output "fsx_ontap_volumes_junction_path" {
  description = "Map of junction_path values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.junction_path if v.junction_path != null && length(v.junction_path) > 0 }
}
output "fsx_ontap_volumes_name" {
  description = "Map of name values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fsx_ontap_volumes_ontap_volume_type" {
  description = "Map of ontap_volume_type values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.ontap_volume_type if v.ontap_volume_type != null && length(v.ontap_volume_type) > 0 }
}
output "fsx_ontap_volumes_region" {
  description = "Map of region values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_ontap_volumes_security_style" {
  description = "Map of security_style values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.security_style if v.security_style != null && length(v.security_style) > 0 }
}
output "fsx_ontap_volumes_size_in_bytes" {
  description = "Map of size_in_bytes values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.size_in_bytes if v.size_in_bytes != null && length(v.size_in_bytes) > 0 }
}
output "fsx_ontap_volumes_size_in_megabytes" {
  description = "Map of size_in_megabytes values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.size_in_megabytes if v.size_in_megabytes != null }
}
output "fsx_ontap_volumes_skip_final_backup" {
  description = "Map of skip_final_backup values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.skip_final_backup if v.skip_final_backup != null }
}
output "fsx_ontap_volumes_snaplock_configuration" {
  description = "Map of snaplock_configuration values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => one(v.snaplock_configuration) if v.snaplock_configuration != null && length(v.snaplock_configuration) > 0 }
}
output "fsx_ontap_volumes_snapshot_policy" {
  description = "Map of snapshot_policy values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.snapshot_policy if v.snapshot_policy != null && length(v.snapshot_policy) > 0 }
}
output "fsx_ontap_volumes_storage_efficiency_enabled" {
  description = "Map of storage_efficiency_enabled values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.storage_efficiency_enabled if v.storage_efficiency_enabled != null }
}
output "fsx_ontap_volumes_storage_virtual_machine_id" {
  description = "Map of storage_virtual_machine_id values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.storage_virtual_machine_id if v.storage_virtual_machine_id != null && length(v.storage_virtual_machine_id) > 0 }
}
output "fsx_ontap_volumes_tags" {
  description = "Map of tags values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fsx_ontap_volumes_tags_all" {
  description = "Map of tags_all values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "fsx_ontap_volumes_tiering_policy" {
  description = "Map of tiering_policy values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => one(v.tiering_policy) if v.tiering_policy != null && length(v.tiering_policy) > 0 }
}
output "fsx_ontap_volumes_uuid" {
  description = "Map of uuid values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.uuid if v.uuid != null && length(v.uuid) > 0 }
}
output "fsx_ontap_volumes_volume_style" {
  description = "Map of volume_style values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.volume_style if v.volume_style != null && length(v.volume_style) > 0 }
}
output "fsx_ontap_volumes_volume_type" {
  description = "Map of volume_type values across all fsx_ontap_volumes, keyed the same as var.fsx_ontap_volumes"
  value       = { for k, v in aws_fsx_ontap_volume.fsx_ontap_volumes : k => v.volume_type if v.volume_type != null && length(v.volume_type) > 0 }
}

