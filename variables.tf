variable "vault_name" {
  description = "The name of the Recovery Services Vault which should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Recovery Services Vault should be created."
  type        = string
}

variable "location" {
  description = "The Azure Region in which the Recovery Services Vault should be created."
  type        = string
}

variable "sku" {
  description = "The SKU of the Recovery Services Vault to create."
  type        = string
  default     = "Standard"
}

variable "public_network_access_enabled" {
  description = "Enable public network access for the Recovery Services Vault."
  type        = bool
  default     = true
}

variable "immutability" {
  description = "Enable immunization for the Recovery Services Vault."
  type        = string
  default     = "Locked"
}

variable "storage_mode_type" {
  description = "The storage model type of the Recovery Services Vault."
  type        = string
  default     = "GeoRedundant"
}

variable "soft_delete_enabled" {
  description = "Enable soft delete for the Recovery Services Vault."
  type        = bool
  default     = true
}

variable "cross_region_restore_enabled" {
  description = "Enable cross region restore for the Recovery Services Vault."
  type        = bool
  default     = true
}

variable "identity_type" {
  description = "The type of identity which should be assigned to the Recovery Services Vault."
  type        = string
  default     = "SystemAssigned"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}