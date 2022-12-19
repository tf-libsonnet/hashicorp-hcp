---
permalink: /aws_network_peering/
---

# aws_network_peering

`aws_network_peering` represents the `hcp_aws_network_peering` Terraform resource.

The AWS network peering resource allows you to manage a network peering between an HVN and a peer AWS VPC.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withHvnId()`](#fn-withhvnid)
* [`fn withPeerAccountId()`](#fn-withpeeraccountid)
* [`fn withPeerVpcId()`](#fn-withpeervpcid)
* [`fn withPeerVpcRegion()`](#fn-withpeervpcregion)
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


`hcp.aws_network_peering.new` injects a new `hcp_aws_network_peering` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.aws_network_peering.new('some_id')

You can get the reference to the `id` field of the created `hcp.aws_network_peering` using the reference:

    $._ref.hcp_aws_network_peering.some_id.get('id')

This is the same as directly entering `"${ hcp_aws_network_peering.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).
  - `peer_account_id` (`string`): The account ID of the peer VPC in AWS.
  - `peer_vpc_id` (`string`): The ID of the peer VPC in AWS.
  - `peer_vpc_region` (`string`): The region of the peer VPC in AWS.
  - `peering_id` (`string`): The ID of the network peering.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.aws_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.aws_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `aws_network_peering`
Terraform resource.

Unlike [hcp.aws_network_peering.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).
  - `peer_account_id` (`string`): The account ID of the peer VPC in AWS.
  - `peer_vpc_id` (`string`): The ID of the peer VPC in AWS.
  - `peer_vpc_region` (`string`): The region of the peer VPC in AWS.
  - `peering_id` (`string`): The ID of the network peering.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.aws_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `aws_network_peering` resource into the root Terraform configuration.


### fn withHvnId

```ts
withHvnId()
```

`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_id` field.


### fn withPeerAccountId

```ts
withPeerAccountId()
```

`hcp.string.withPeerAccountId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_account_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_account_id` field.


### fn withPeerVpcId

```ts
withPeerVpcId()
```

`hcp.string.withPeerVpcId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_vpc_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_vpc_id` field.


### fn withPeerVpcRegion

```ts
withPeerVpcRegion()
```

`hcp.string.withPeerVpcRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the peer_vpc_region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peer_vpc_region` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.aws_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
