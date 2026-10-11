resource "oci_database_advanced_cluster_file_system_unmount" "database_advanced_cluster_file_system_unmounts" {
  for_each = var.database_advanced_cluster_file_system_unmounts

  advanced_cluster_file_system_id = each.value.advanced_cluster_file_system_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

