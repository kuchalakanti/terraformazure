resource "azurerm_storage_account" "example" {
  name                     = "examplestorageaccount001" # Must be globally unique
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Locally Redundant Storage
  account_kind             = "StorageV2" # General-purpose v2 storage account
}

# Create a Blob Container within the Storage Account
resource "azurerm_storage_container" "example" {
  name                  = "example-container"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private" # Options: private, blob, container
}