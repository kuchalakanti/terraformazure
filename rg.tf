resource "azurerm_resource_group" "rg" {
    name = "krishna-rg"
    location = "eastus"
  tags = {
    Owner = "dev-env"
  }
}