resource "azurerm_network_security_group" "network_sg" {
  name                = "custom-security-group"
  location            = azurerm_resource_group.default_rg.location
  resource_group_name = azurerm_resource_group.default_rg.name
}