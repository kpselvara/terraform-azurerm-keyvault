resource "azurerm_key_vault" "tf_kv" {
  name                            = var.kv_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tenant_id                       = var.tenant_id
  soft_delete_retention_days      = var.soft_delete_retention_days
  purge_protection_enabled        = var.purge_protection_enabled
  sku_name                        = var.sku_name
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_template_deployment = var.enabled_for_template_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enable_rbac_authorization       = var.enable_rbac_authorization
  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
    ip_rules       = var.ip_rules
  }
  lifecycle {
    ignore_changes = [
      network_acls[0].ip_rules
    ]
  }
  tags = var.tags
}
