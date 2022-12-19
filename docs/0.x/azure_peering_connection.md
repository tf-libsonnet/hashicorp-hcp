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
* [`fn withHvnLink()`](#fn-withhvnlink)
* [`fn withPeerResourceGroupName()`](#fn-withpeerresourcegroupname)
* [`fn withPeerSubscriptionId()`](#fn-withpeersubscriptionid)
* [`fn withPeerTenantId()`](#fn-withpeertenantid)
* [`fn withPeerVnetName()`](#fn-withpeervnetname)
* [`fn withPeerVnetRegion()`](#fn-withpeervnetregion)
* [`fn withPeeringId()`](#fn-withpeeringid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
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
  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).
  - `peer_resource_group_name` (`string`): The resource group name of the peer VNet in Azure.
  - `peer_subscription_id` (`string`): The subscription ID of the peer VNet in Azure.
  - `peer_tenant_id` (`string`): The tenant ID of the peer VNet in Azure.
  - `peer_vnet_name` (`string`): The name of the peer VNet in Azure.
  - `peer_vnet_region` (`string`): The region of the peer VNet in Azure.
  - `peering_id` (`string`): The ID of the peering connection.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.azure_peering_connection.timeouts.new](#fn-azurepeeringconnectiontimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.azure_peering_connection.newAttrs` constructs a new object with attributes and blocks configured for the `azure_peering_connection`
Terraform resource.

Unlike [hcp.azure_peering_connection.new](#fn-azurepeeringconnectionnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).
  - `peer_resource_group_name` (`string`): The resource group name of the peer VNet in Azure.
  - `peer_subscription_id` (`string`): The subscription ID of the peer VNet in Azure.
  - `peer_tenant_id` (`string`): The tenant ID of the peer VNet in Azure.
  - `peer_vnet_name` (`string`): The name of the peer VNet in Azure.
  - `peer_vnet_region` (`string`): The region of the peer VNet in Azure.
  - `peering_id` (`string`): The ID of the peering connection.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.azure_peering_connection.timeouts.new](#fn-azurepeeringconnectiontimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `azure_peering_connection` resource into the root Terraform configuration.


### fn withHvnLink

```ts
withHvnLink()
```

`hcp.azure_peering_connection.withHvnLink` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the hvn_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `hvn_link` field.


### fn withPeerResourceGroupName

```ts
withPeerResourceGroupName()
```

`hcp.azure_peering_connection.withPeerResourceGroupName` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the peer_resource_group_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `peer_resource_group_name` field.


### fn withPeerSubscriptionId

```ts
withPeerSubscriptionId()
```

`hcp.azure_peering_connection.withPeerSubscriptionId` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the peer_subscription_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `peer_subscription_id` field.


### fn withPeerTenantId

```ts
withPeerTenantId()
```

`hcp.azure_peering_connection.withPeerTenantId` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the peer_tenant_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `peer_tenant_id` field.


### fn withPeerVnetName

```ts
withPeerVnetName()
```

`hcp.azure_peering_connection.withPeerVnetName` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the peer_vnet_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `peer_vnet_name` field.


### fn withPeerVnetRegion

```ts
withPeerVnetRegion()
```

`hcp.azure_peering_connection.withPeerVnetRegion` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the peer_vnet_region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `peer_vnet_region` field.


### fn withPeeringId

```ts
withPeeringId()
```

`hcp.azure_peering_connection.withPeeringId` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the peering_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `peering_id` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.azure_peering_connection.withTimeouts` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.azure_peering_connection.withTimeoutsMixin` constructs a mixin object that can be merged into the `azure_peering_connection`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.azure_peering_connection.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.azure_peering_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
