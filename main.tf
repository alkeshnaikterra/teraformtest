
locals {
  prefix-hub         = "hub"
}

resource "azurerm_resource_group" "rg" {
    provider = "azurerm.core"
    name     = "${var.resource_group_name}"
    location = "${var.location}"
}
resource "null_resource" "script1" {
  provisioner "local-exec" {
    command = "Write-Host \"Hello ${var.tenant_id}\""

    interpreter = ["PowerShell", "-Command"]
  }
}