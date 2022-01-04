resource "azurerm_network_security_rule" "mgmtAllowWeb" {
  name                        = "allowHttp"
  priority                    = 100
  direction                   = "inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rgnetwork.name
  network_security_group_name = azurerm_network_security_group.nsgmgmt.name
}

resource "azurerm_network_security_rule" "mgmtAllowSSH" {
  name                        = "allowSSH"
  priority                    = 110
  direction                   = "inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rgnetwork.name
  network_security_group_name = azurerm_network_security_group.nsgmgmt.name
}