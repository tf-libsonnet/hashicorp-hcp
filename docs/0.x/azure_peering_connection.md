---
permalink: /azure_peering_connection/
---

# azure_peering_connection

`azure_peering_connection` represents the `hcp_azure_peering_connection` Terraform resource.

The Azure peering connection resource allows you to manage a peering connection between an HVN and a peer Azure VNet.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAllowForwardedTraffic()`](#fn-withallowforwardedtraffic)
* [`fn withHvnLink()`](#fn-withhvnlink)
* [`fn withPeerResourceGroupName()`](#fn-withpeerresourcegroupname)
* [`fn withPeerSubscriptionId()`](#fn-withpeersubscriptionid)
* [`fn withPeerTenantId()`](#fn-withpeertenantid)
* [`fn withPeerVnetName()`](#fn-withpeervnetname)
* [`fn withPeerVnetRegion()`](#fn-withpeervnetregion)
* [`fn withPeeringId()`](#fn-withpeeringid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUseRemoteGateways()`](#fn-withuseremotegateways)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.azure_peering_connection.new` injects a new `hcp_azure_peering_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.azure_peering_connection.new('some_id')

You can get the reference to the `id` field of the created `hcp.azure_peering_connection` using the reference:

    $._ref.hcp_azure_peering_connection.some_id.get('id')

This is the same as directly entering `"${ hcp_azure_peering_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `allow_forwarded_traffic` (`bool`): Whether the forwarded traffic originating from the peered VNet is allowed in the HVN When `null`, the `allow_forwarded_traffic` field will be omitted from the resulting object.
  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).
  - `peer_resource_group_name` (`string`): The resource group name of the peer VNet in Azure.
  - `peer_subscription_id` (`string`): The subscription ID of the peer VNet in Azure.
  - `peer_tenant_id` (`string`): The tenant ID of the peer VNet in Azure.
  - `peer_vnet_name` (`string`): The name of the peer VNet in Azure.
  - `peer_vnet_region` (`string`): The region of the peer VNet in Azure.
  - `peering_id` (`string`): The ID of the peering connection.
  - `use_remote_gateways` (`bool`): If the HVN should use the gateway of the peered VNet When `null`, the `use_remote_gateways` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.azure_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.azure_peering_connection.newAttrs` constructs a new object with attributes and blocks configured for the `azure_peering_connection`
Terraform resource.

Unlike [hcp.azure_peering_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `allow_forwarded_traffic` (`bool`): Whether the forwarded traffic originating from the peered VNet is allowed in the HVN When `null`, the `allow_forwarded_traffic` field will be omitted from the resulting object.
  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).
  - `peer_resource_group_name` (`string`): The resource group name of the peer VNet in Azure.
  - `peer_subscription_id` (`string`): The subscription ID of the peer VNet in Azure.
  - `peer_tenant_id` (`string`): The tenant ID of the peer VNet in Azure.
  - `peer_vnet_name` (`string`): The name of the peer VNet in Azure.
  - `peer_vnet_region` (`string`): The region of the peer VNet in Azure.
  - `peering_id` (`string`): The ID of the peering connection.
  - `use_remote_gateways` (`bool`): If the HVN should use the gateway of the peered VNet When `null`, the `use_remote_gateways` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.azure_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `azure_peering_connection` resource into the root Terraform configuration.


### fn withAllowForwardedTraffic

```ts
withAllowForwardedTraffic()
```

`hcp.bool.withAllowForwardedTraffic` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the allow_forwarded_traffic field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `allow_forwarded_traffic` field.


### fn withHvnLink

```ts
withHvnLink()
```

`hcp.string.withHvnLink` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_link` field.


### fn withPeerResourceGroupName

```ts
withPeerResourceGroupName()
```

`hcp.string.withPeerResourceGroupName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_resource_group_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_resource_group_name` field.


### fn withPeerSubscriptionId

```ts
withPeerSubscriptionId()
```

`hcp.string.withPeerSubscriptionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_subscription_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_subscription_id` field.


### fn withPeerTenantId

```ts
withPeerTenantId()
```

`hcp.string.withPeerTenantId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_tenant_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_tenant_id` field.


### fn withPeerVnetName

```ts
withPeerVnetName()
```

`hcp.string.withPeerVnetName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_vnet_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_vnet_name` field.


### fn withPeerVnetRegion

```ts
withPeerVnetRegion()
```

`hcp.string.withPeerVnetRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_vnet_region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_vnet_region` field.


### fn withPeeringId

```ts
withPeeringId()
```

`hcp.string.withPeeringId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peering_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peering_id` field.


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


### fn withUseRemoteGateways

```ts
withUseRemoteGateways()
```

`hcp.bool.withUseRemoteGateways` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the use_remote_gateways field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `use_remote_gateways` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.azure_peering_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
