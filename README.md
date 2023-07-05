<!-- BEGIN_TF_DOCS -->
 # Recovery Services Vault
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-recovery_services_vau/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault#cross_region_restore_enabled)

# Usage - Module

## Recovery Services Vault.

```hcl
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
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_recovery_services_vault.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| location | The Azure Region in which the Recovery Services Vault should be created. | `string` | yes |
| resource\_group\_name | The name of the resource group in which the Recovery Services Vault should be created. | `string` | yes |
| vault\_name | The name of the Recovery Services Vault which should be created. | `string` | yes |
| cross\_region\_restore\_enabled | Enable cross region restore for the Recovery Services Vault. | `bool` | no |
| identity\_type | The type of identity which should be assigned to the Recovery Services Vault. | `string` | no |
| immunization\_enabled | Enable immunization for the Recovery Services Vault. | `string` | no |
| public\_network\_access\_enabled | Enable public network access for the Recovery Services Vault. | `bool` | no |
| sku | The SKU of the Recovery Services Vault to create. | `string` | no |
| soft\_delete\_enabled | Enable soft delete for the Recovery Services Vault. | `bool` | no |
| storage\_mode\_type | The storage model type of the Recovery Services Vault. | `string` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| vault\_id | The ID of the Recovery Services Vault. |
| vault\_name | The name of the Recovery Services Vault. |
| vault\_principal\_id | The Principal ID of the Recovery Services Vault. |

## Related documentation
<!-- END_TF_DOCS -->