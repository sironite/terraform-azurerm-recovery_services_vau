output "vault_id" {
  description = "The ID of the Recovery Services Vault."
  value       = azurerm_recovery_services_vault.this.id
}

output "vault_name" {
  description = "The name of the Recovery Services Vault."
  value       = azurerm_recovery_services_vault.this.name
}

output "vault_principal_id" {
  description = "The Principal ID of the Recovery Services Vault."
  value       = azurerm_recovery_services_vault.this.identity[0].principal_id
}
  