variable "database_advanced_cluster_file_system_unmounts" {
  description = <<EOT
Map of database_advanced_cluster_file_system_unmounts, attributes below
Required:
    - advanced_cluster_file_system_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    advanced_cluster_file_system_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

