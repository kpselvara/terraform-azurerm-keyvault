# ---------------------------
# Location settings
# ---------------------------
variable "location" {
  description = "Azure location"
  type        = string
  default     = "uksouth"
}

# ---------------------------
# Resource Group settings
# ---------------------------
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = ""
}


# ---------------------------
# Key Vault settings
# ---------------------------
variable "kv_name" {
  description = "Name of the Key Vault"
  type        = string
  default     = ""
}

variable "tenant_id" {
  description = "Azure tenant id to authenticate against"
  type        = string
  default     = ""
}

variable "soft_delete_retention_days" {
  description = "Retention days for soft deleted objects"
  type        = string
  default     = "90"
}

variable "purge_protection_enabled" {
  description = "Protects ojects from being purged until the end of the retention period"
  type        = bool
  default     = false
}

variable "sku_name" {
  description = "Standard or Premium pricing tier"
  type        = string
  default     = "standard"
}

variable "enabled_for_deployment" {
  description = "Enable azure vms to access secrets"
  type        = bool
  default     = false
}

variable "enabled_for_template_deployment" {
  description = "Enable Azure Resource Manager to access secrets"
  type        = bool
  default     = false
}

variable "enabled_for_disk_encryption" {
  description = "Enable Azure Disk Encrypton to access secrets"
  type        = bool
  default     = false
}

variable "enable_rbac_authorization" {
  description = "Enable Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions"
  type        = bool
  default     = false
}

variable "ip_rules" {
  description = "Enable Imperial Prod Network Access at SK"
  type        = list(string)
  default     = ["155.198.30.0/23"]
}


# ---------------------------
# Tag values
# ---------------------------
variable "tags" {
  description = "Tag values"
  type        = map(string)
  default     = {}
}
