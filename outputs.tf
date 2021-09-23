output "kv_id" {
  value = azurerm_key_vault.tf_kv.id
}

output "kv_uri" {
  value = azurerm_key_vault.tf_kv.vault_uri
}