---
permalink: /data/hvn_peering_connection/
---

# data.hvn_peering_connection

`hvn_peering_connection` represents the `hcp_hvn_peering_connection` Terraform data source.

The HVN peering connection data source provides information about an existing peering connection between HVNs.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withHvn1()`](#fn-withhvn1)
* [`fn withHvn2()`](#fn-withhvn2)
* [`fn withPeeringId()`](#fn-withpeeringid)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.data.hvn_peering_connection.new` injects a new `data_hcp_hvn_peering_connection` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.hvn_peering_connection.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.hvn_peering_connection` using the reference:

    $._ref.data_hcp_hvn_peering_connection.some_id.get('id')

This is the same as directly entering `"${ data_hcp_hvn_peering_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `hvn_1` (`string`): The unique URL of one of the HVNs being peered.
  - `hvn_2` (`string`): The unique URL of one of the HVNs being peered.
  - `peering_id` (`string`): The ID of the peering connection.
  - `project_id` (`string`): The ID of the HCP project where the HVN peering connection is located. When `null`, the `project_id` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting data source block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.hvn_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.hvn_peering_connection.newAttrs` constructs a new object with attributes and blocks configured for the `hvn_peering_connection`
Terraform data source.

Unlike [hcp.data.hvn_peering_connection.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `hvn_1` (`string`): The unique URL of one of the HVNs being peered.
  - `hvn_2` (`string`): The unique URL of one of the HVNs being peered.
  - `peering_id` (`string`): The ID of the peering connection.
  - `project_id` (`string`): The ID of the HCP project where the HVN peering connection is located. When `null`, the `project_id` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.hvn_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `hvn_peering_connection` data source into the root Terraform configuration.


### fn withHvn1

```ts
withHvn1()
```

`hcp.string.withHvn1` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the hvn_1 field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_1` field.


### fn withHvn2

```ts
withHvn2()
```

`hcp.string.withHvn2` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the hvn_2 field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_2` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.hvn_peering_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
