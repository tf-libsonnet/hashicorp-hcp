---
permalink: /consul_cluster/
---

# consul_cluster

`consul_cluster` represents the `hcp_consul_cluster` Terraform resource.

The Consul cluster resource allows you to manage an HCP Consul cluster.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAutoHvnToHvnPeering()`](#fn-withautohvntohvnpeering)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withConnectEnabled()`](#fn-withconnectenabled)
* [`fn withDatacenter()`](#fn-withdatacenter)
* [`fn withHvnId()`](#fn-withhvnid)
* [`fn withMinConsulVersion()`](#fn-withminconsulversion)
* [`fn withPrimaryLink()`](#fn-withprimarylink)
* [`fn withPublicEndpoint()`](#fn-withpublicendpoint)
* [`fn withSize()`](#fn-withsize)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.consul_cluster.new` injects a new `hcp_consul_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.consul_cluster.new('some_id')

You can get the reference to the `id` field of the created `hcp.consul_cluster` using the reference:

    $._ref.hcp_consul_cluster.some_id.get('id')

This is the same as directly entering `"${ hcp_consul_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `auto_hvn_to_hvn_peering` (`bool`): Enables automatic HVN to HVN peering when creating a secondary cluster in a federation. The alternative to using the auto-accept feature is to create an [`hcp_hvn_peering_connection`](hvn_peering_connection.md) resource that explicitly defines the HVN resources that are allowed to communicate with each other. When `null`, the `auto_hvn_to_hvn_peering` field will be omitted from the resulting object.
  - `cluster_id` (`string`): The ID of the HCP Consul cluster.
  - `connect_enabled` (`bool`): Denotes the Consul connect feature should be enabled for this cluster.  Default to true. When `null`, the `connect_enabled` field will be omitted from the resulting object.
  - `datacenter` (`string`): The Consul data center name of the cluster. If not specified, it is defaulted to the value of `cluster_id`. When `null`, the `datacenter` field will be omitted from the resulting object.
  - `hvn_id` (`string`): The ID of the HVN this HCP Consul cluster is associated to.
  - `min_consul_version` (`string`): The minimum Consul patch version of the cluster. Allows only the rightmost version component to increment (E.g: `1.13.0` will allow installation of `1.13.2` and `1.13.3` etc., but not `1.14.0`). If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_consul_version` field will be omitted from the resulting object.
  - `primary_link` (`string`): The `self_link` of the HCP Consul cluster which is the primary in the federation setup with this HCP Consul cluster. If not specified, it is a standalone cluster. When `null`, the `primary_link` field will be omitted from the resulting object.
  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint for the Consul UI. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.
  - `size` (`string`): The t-shirt size representation of each server VM that this Consul cluster is provisioned with. Valid option for development tier - `x_small`. Valid options for other tiers - `small`, `medium`, `large`. For more details - https://cloud.hashicorp.com/pricing/consul. Upgrading the size of a cluster after creation is allowed. When `null`, the `size` field will be omitted from the resulting object.
  - `tier` (`string`): The tier that the HCP Consul cluster will be provisioned as.  Only `development`, `standard` and `plus` are available at this time. See [pricing information](https://cloud.hashicorp.com/pricing/consul).
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.consul_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `consul_cluster`
Terraform resource.

Unlike [hcp.consul_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `auto_hvn_to_hvn_peering` (`bool`): Enables automatic HVN to HVN peering when creating a secondary cluster in a federation. The alternative to using the auto-accept feature is to create an [`hcp_hvn_peering_connection`](hvn_peering_connection.md) resource that explicitly defines the HVN resources that are allowed to communicate with each other. When `null`, the `auto_hvn_to_hvn_peering` field will be omitted from the resulting object.
  - `cluster_id` (`string`): The ID of the HCP Consul cluster.
  - `connect_enabled` (`bool`): Denotes the Consul connect feature should be enabled for this cluster.  Default to true. When `null`, the `connect_enabled` field will be omitted from the resulting object.
  - `datacenter` (`string`): The Consul data center name of the cluster. If not specified, it is defaulted to the value of `cluster_id`. When `null`, the `datacenter` field will be omitted from the resulting object.
  - `hvn_id` (`string`): The ID of the HVN this HCP Consul cluster is associated to.
  - `min_consul_version` (`string`): The minimum Consul patch version of the cluster. Allows only the rightmost version component to increment (E.g: `1.13.0` will allow installation of `1.13.2` and `1.13.3` etc., but not `1.14.0`). If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_consul_version` field will be omitted from the resulting object.
  - `primary_link` (`string`): The `self_link` of the HCP Consul cluster which is the primary in the federation setup with this HCP Consul cluster. If not specified, it is a standalone cluster. When `null`, the `primary_link` field will be omitted from the resulting object.
  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint for the Consul UI. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.
  - `size` (`string`): The t-shirt size representation of each server VM that this Consul cluster is provisioned with. Valid option for development tier - `x_small`. Valid options for other tiers - `small`, `medium`, `large`. For more details - https://cloud.hashicorp.com/pricing/consul. Upgrading the size of a cluster after creation is allowed. When `null`, the `size` field will be omitted from the resulting object.
  - `tier` (`string`): The tier that the HCP Consul cluster will be provisioned as.  Only `development`, `standard` and `plus` are available at this time. See [pricing information](https://cloud.hashicorp.com/pricing/consul).
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `consul_cluster` resource into the root Terraform configuration.


### fn withAutoHvnToHvnPeering

```ts
withAutoHvnToHvnPeering()
```

`hcp.bool.withAutoHvnToHvnPeering` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the auto_hvn_to_hvn_peering field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `auto_hvn_to_hvn_peering` field.


### fn withClusterId

```ts
withClusterId()
```

`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withConnectEnabled

```ts
withConnectEnabled()
```

`hcp.bool.withConnectEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the connect_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `connect_enabled` field.


### fn withDatacenter

```ts
withDatacenter()
```

`hcp.string.withDatacenter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the datacenter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `datacenter` field.


### fn withHvnId

```ts
withHvnId()
```

`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_id` field.


### fn withMinConsulVersion

```ts
withMinConsulVersion()
```

`hcp.string.withMinConsulVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the min_consul_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `min_consul_version` field.


### fn withPrimaryLink

```ts
withPrimaryLink()
```

`hcp.string.withPrimaryLink` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the primary_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `primary_link` field.


### fn withPublicEndpoint

```ts
withPublicEndpoint()
```

`hcp.bool.withPublicEndpoint` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the public_endpoint field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `public_endpoint` field.


### fn withSize

```ts
withSize()
```

`hcp.string.withSize` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `size` field.


### fn withTier

```ts
withTier()
```

`hcp.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.consul_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
