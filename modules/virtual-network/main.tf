<<<<<<< HEAD
resource "azurerm_resource_group" "default_rg" {
  name     = "practice-resource-group"
  location = "var.region"
}

=======
>>>>>>> 620694d (modified resources)
resource "azurerm_virtual_network" "my_vpn" {
  name                = "custom-network"
  location            = azurerm_resource_group.default_rg.location
  resource_group_name = azurerm_resource_group.default_rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = 
  }

  tags = {
    environment = "Development"
  }
}