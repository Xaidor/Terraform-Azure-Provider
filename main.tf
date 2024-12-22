resource "azurerm_resource_group" "default_rg" {
  name     = "practice-resource-group"
  location = "var.region"
}