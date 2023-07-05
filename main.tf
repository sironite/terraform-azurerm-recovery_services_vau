resource "azurerm_recovery_services_vault" "this" {
  name                          = var.vault_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  public_network_access_enabled = var.public_network_access_enabled
  immunization_enabled          = var.immunization_enabled
  storage_model_type            = var.storage_model_type
  soft_delete_enabled           = var.soft_delete_enabled
  cross_region_restore_enabled  = var.cross_region_restore_enabled

  identity {
    type = var.identity_type
  }

}