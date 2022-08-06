resource "azurerm_resource_group" "stagingRG" {
  name     = var.staging_resource_group_name
  location = var.staging_resource_group_location
}

resource "azurerm_resource_group" "productionRG" {
  name     = var.production_resource_group_name
  location = var.production_resource_group_location
}

resource "azurerm_container_registry" "ACR" {
  depends_on = [azurerm_resource_group.stagingRG]
  name                = "containerRegistryForK8s8608"
  resource_group_name = azurerm_resource_group.stagingRG.name
  location            = azurerm_resource_group.stagingRG.location
  sku                 = "Premium"
}

module "K8sCluster-staging" {
  depends_on = [azurerm_resource_group.stagingRG,azurerm_container_registry.ACR]
  source = "./K8s_module"
  resource_group_location = azurerm_resource_group.stagingRG.location
  resource_group_name = azurerm_resource_group.stagingRG.name
  amount_of_nodes = 1
  ACR_id = azurerm_container_registry.ACR.id
}

module "K8sCluster-production" {
  depends_on = [azurerm_resource_group.productionRG,azurerm_container_registry.ACR]
  source = "./K8s_module"
  resource_group_location = azurerm_resource_group.productionRG.location
  resource_group_name = azurerm_resource_group.productionRG.name
  amount_of_nodes = 2
  ACR_id = azurerm_container_registry.ACR.id
}