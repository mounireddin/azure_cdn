<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cdn_endpoint.cdn_endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_endpoint) | resource |
| [azurerm_cdn_profile.cdn_profile](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_profile) | resource |
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | (Required) Specifies the Environment value (prod, qa, dev). | `string` | n/a | yes |
| <a name="input_is_http_allowed"></a> [is\_http\_allowed](#input\_is\_http\_allowed) | value | `string` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location of the Resource Group. | `string` | n/a | yes |
| <a name="input_location_abbreviation"></a> [location\_abbreviation](#input\_location\_abbreviation) | (Required) The abbreviation of the location used in the Resource Group name. | `string` | n/a | yes |
| <a name="input_origin_host_name"></a> [origin\_host\_name](#input\_origin\_host\_name) | value | `string` | n/a | yes |
| <a name="input_origin_name"></a> [origin\_name](#input\_origin\_name) | value | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | value | `string` | n/a | yes |
| <a name="input_workload_name"></a> [workload\_name](#input\_workload\_name) | value | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cdn_endpoint_id"></a> [cdn\_endpoint\_id](#output\_cdn\_endpoint\_id) | The ID of the Endpoint. |
| <a name="output_cdn_profile_name"></a> [cdn\_profile\_name](#output\_cdn\_profile\_name) | The ID of the CDN Profile. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The Name of the RG. |
<!-- END_TF_DOCS -->