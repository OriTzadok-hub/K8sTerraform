## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.0.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_K8sCluster-production"></a> [K8sCluster-production](#module\_K8sCluster-production) | ./K8s_module | n/a |
| <a name="module_K8sCluster-staging"></a> [K8sCluster-staging](#module\_K8sCluster-staging) | ./K8s_module | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.ACR](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_resource_group.productionRG](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.stagingRG](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_production_resource_group_location"></a> [production\_resource\_group\_location](#input\_production\_resource\_group\_location) | the location of all the resources | `string` | n/a | yes |
| <a name="input_production_resource_group_name"></a> [production\_resource\_group\_name](#input\_production\_resource\_group\_name) | The Name of the Resource Group | `string` | n/a | yes |
| <a name="input_staging_resource_group_location"></a> [staging\_resource\_group\_location](#input\_staging\_resource\_group\_location) | the location of all the resources | `string` | n/a | yes |
| <a name="input_staging_resource_group_name"></a> [staging\_resource\_group\_name](#input\_staging\_resource\_group\_name) | The Name of the Resource Group | `string` | n/a | yes |

## Outputs

No outputs.
