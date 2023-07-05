module "recovery_services_vault" {
  source  = "sironite/recovery_services_vault/azurerm"
  version = "X.X.X"

  vault_name                    = "my-vault"
  resource_group_name           = "my-resource-group"
  location                      = "westeurope"
  sku                           = "Standard"
  public_network_access_enabled = true
  immunization_enabled          = true
  storage_model_type            = "GeoRedundant"
  soft_delete_enabled           = true
  cross_region_restore_enabled  = true

  identity_type = "SystemAssigned"
}