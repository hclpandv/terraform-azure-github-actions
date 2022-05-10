#----Creating a resourceGroup for network resources
resource "azurerm_resource_group" "rgnetwork" {
  name     = var.rg_network
  location = var.location
}
