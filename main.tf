
locals {
  prefix-hub         = "hub"
}

resource "azurerm_resource_group" "rg" {
    provider = "azurerm.core"
    name     = "${var.resource_group_name}"
    location = "${var.location}"
}