---
permalink: /hvn_peering_connection/
---

# hvn_peering_connection

`hvn_peering_connection` represents the `hcp_hvn_peering_connection` Terraform resource.

The HVN peering connection resource allows you to manage a peering connection between HVNs.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withHvn1()`](#fn-withhvn1)
* [`fn withHvn2()`](#fn-withhvn2)
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


`hcp.hvn_peering_connection.new` injects a new `hcp_hvn_peering_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.hvn_peering_connection.new('some_id')

You can get the reference to the `id` field of the created `hcp.hvn_peering_connection` using the reference:

    $._ref.hcp_hvn_peering_connection.some_id.get('id')

This is the same as directly entering `"${ hcp_hvn_peering_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `hvn_1` (`string`): The unique URL of one of the HVNs being peered.
  - `hvn_2` (`string`): The unique URL of one of the HVNs being peered.
  - `project_id` (`string`): The ID of the HCP project where HVN peering connection is located. Always matches hvn_1&#39;s project ID. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.hvn_peering_connection.newAttrs` constructs a new object with attributes and blocks configured for the `hvn_peering_connection`
Terraform resource.

Unlike [hcp.hvn_peering_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `hvn_1` (`string`): The unique URL of one of the HVNs being peered.
  - `hvn_2` (`string`): The unique URL of one of the HVNs being peered.
  - `project_id` (`string`): The ID of the HCP project where HVN peering connection is located. Always matches hvn_1&#39;s project ID. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `hvn_peering_connection` resource into the root Terraform configuration.


### fn withHvn1

```ts
withHvn1()
```

`hcp.string.withHvn1` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_1 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_1` field.


### fn withHvn2

```ts
withHvn2()
```

`hcp.string.withHvn2` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_2 field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_2` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


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


`hcp.hvn_peering_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
