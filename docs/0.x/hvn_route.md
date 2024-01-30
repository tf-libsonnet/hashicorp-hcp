---
permalink: /hvn_route/
---

# hvn_route

`hvn_route` represents the `hcp_hvn_route` Terraform resource.

The HVN route resource allows you to manage an HVN route.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAzureConfig()`](#fn-withazureconfig)
* [`fn withAzureConfigMixin()`](#fn-withazureconfigmixin)
* [`fn withDestinationCidr()`](#fn-withdestinationcidr)
* [`fn withHvnLink()`](#fn-withhvnlink)
* [`fn withHvnRouteId()`](#fn-withhvnrouteid)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withTargetLink()`](#fn-withtargetlink)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj azure_config`](#obj-azure_config)
  * [`fn new()`](#fn-azure_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.hvn_route.new` injects a new `hcp_hvn_route` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.hvn_route.new('some_id')

You can get the reference to the `id` field of the created `hcp.hvn_route` using the reference:

    $._ref.hcp_hvn_route.some_id.get('id')

This is the same as directly entering `"${ hcp_hvn_route.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `destination_cidr` (`string`): The destination CIDR of the HVN route.
  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).
  - `hvn_route_id` (`string`): The ID of the HVN route.
  - `project_id` (`string`): The ID of the HCP project where the HVN route is located. Always matches the project ID in `hvn_link`. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.
  - `target_link` (`string`): A unique URL identifying the target of the HVN route. Examples of the target: [`aws_network_peering`](aws_network_peering.md), [`aws_transit_gateway_attachment`](aws_transit_gateway_attachment.md)
  - `azure_config` (`list[obj]`): The Azure configuration for routing. When `null`, the `azure_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_route.azure_config.new](#fn-azure_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.hvn_route.newAttrs` constructs a new object with attributes and blocks configured for the `hvn_route`
Terraform resource.

Unlike [hcp.hvn_route.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `destination_cidr` (`string`): The destination CIDR of the HVN route.
  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).
  - `hvn_route_id` (`string`): The ID of the HVN route.
  - `project_id` (`string`): The ID of the HCP project where the HVN route is located. Always matches the project ID in `hvn_link`. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.
  - `target_link` (`string`): A unique URL identifying the target of the HVN route. Examples of the target: [`aws_network_peering`](aws_network_peering.md), [`aws_transit_gateway_attachment`](aws_transit_gateway_attachment.md)
  - `azure_config` (`list[obj]`): The Azure configuration for routing. When `null`, the `azure_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_route.azure_config.new](#fn-azure_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_route.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `hvn_route` resource into the root Terraform configuration.


### fn withAzureConfig

```ts
withAzureConfig()
```

`hcp.list[obj].withAzureConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the azure_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withAzureConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `azure_config` field.


### fn withAzureConfigMixin

```ts
withAzureConfigMixin()
```

`hcp.list[obj].withAzureConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the azure_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withAzureConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `azure_config` field.


### fn withDestinationCidr

```ts
withDestinationCidr()
```

`hcp.string.withDestinationCidr` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the destination_cidr field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `destination_cidr` field.


### fn withHvnLink

```ts
withHvnLink()
```

`hcp.string.withHvnLink` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_link` field.


### fn withHvnRouteId

```ts
withHvnRouteId()
```

`hcp.string.withHvnRouteId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_route_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_route_id` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withTargetLink

```ts
withTargetLink()
```

`hcp.string.withTargetLink` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_link` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj azure_config



### fn azure_config.new

```ts
new()
```


`hcp.hvn_route.azure_config.new` constructs a new object with attributes and blocks configured for the `azure_config`
Terraform sub block.



**Args**:
  - `next_hop_ip_address` (`string`): Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VIRTUAL_APPLIANCE. When `null`, the `next_hop_ip_address` field will be omitted from the resulting object.
  - `next_hop_type` (`string`): The type of Azure hop the packet should be sent to. Valid options for Next Hop Type - `VIRTUAL_APPLIANCE` or `VIRTUAL_NETWORK_GATEWAY`

**Returns**:
  - An attribute object that represents the `azure_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.hvn_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
