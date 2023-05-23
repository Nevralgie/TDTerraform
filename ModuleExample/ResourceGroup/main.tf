resource "azurerm_resource_group" "lab" {
  name     = "${var.base_name}RG"
  location = var.location
}