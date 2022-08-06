resource "azurerm_kubernetes_cluster" "K8sCluster" {
  name                = "AKS${var.resource_group_name}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.resource_group_name}dns"

  default_node_pool {
    name       = "default"
    node_count = var.amount_of_nodes
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_role_assignment" "ACRassignment" {
  principal_id                     = azurerm_kubernetes_cluster.K8sCluster.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = var.ACR_id
  skip_service_principal_aad_check = true
}