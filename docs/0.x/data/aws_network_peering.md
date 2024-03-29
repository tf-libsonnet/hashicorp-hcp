---
permalink: /data/aws_network_peering/
---

# data.aws_network_peering

`aws_network_peering` represents the `hcp_aws_network_peering` Terraform data source.

The AWS network peering data source provides information about an existing network peering between an HVN and a peer AWS VPC.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withHvnId()`](#fn-withhvnid)
* [`fn withPeeringId()`](#fn-withpeeringid)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWaitForActiveState()`](#fn-withwaitforactivestate)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.data.aws_network_peering.new` injects a new `data_hcp_aws_network_peering` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.aws_network_peering.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.aws_network_peering` using the reference:

    $._ref.data_hcp_aws_network_peering.some_id.get('id')

This is the same as directly entering `"${ data_hcp_aws_network_peering.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).
  - `peering_id` (`string`): The ID of the network peering.
  - `project_id` (`string`): 
The ID of the HCP project where the network peering is located. Always matches the HVN&#39;s project.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `wait_for_active_state` (`bool`): If `true`, Terraform will wait for the network peering to reach an `ACTIVE` state before continuing. Default `false`. When `null`, the `wait_for_active_state` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting data source block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.aws_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.aws_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `aws_network_peering`
Terraform data source.

Unlike [hcp.data.aws_network_peering.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).
  - `peering_id` (`string`): The ID of the network peering.
  - `project_id` (`string`): 
The ID of the HCP project where the network peering is located. Always matches the HVN&#39;s project.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `wait_for_active_state` (`bool`): If `true`, Terraform will wait for the network peering to reach an `ACTIVE` state before continuing. Default `false`. When `null`, the `wait_for_active_state` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.aws_network_peering.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `aws_network_peering` data source into the root Terraform configuration.


### fn withHvnId

```ts
withHvnId()
```

`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the hvn_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_id` field.


### fn withPeeringId

```ts
withPeeringId()
```

`hcp.string.withPeeringId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the peering_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `peering_id` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withWaitForActiveState

```ts
withWaitForActiveState()
```

`hcp.bool.withWaitForActiveState` constructs a mixin object that can be merged into the `bool`
Terraform data source block to set or update the wait_for_active_state field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `wait_for_active_state` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.aws_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `read` (`string`): Set the `read` field on the resulting object. When `null`, the `read` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
