#--Adding Lock to network RG
resource "azurerm_management_lock" "resource-group-level" {
  name       = "resource-group-level"
  scope      = azurerm_resource_group.rgnetwork.id
  lock_level = "CanNotDelete"
  notes      = "This Resource Group is Read-Only"
}