---
permalink: /packer_channel/
---

# packer_channel

`packer_channel` represents the `hcp_packer_channel` Terraform resource.

The Packer Channel resource allows you to manage image bucket channels within an active HCP Packer Registry.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucketName()`](#fn-withbucketname)
* [`fn withIteration()`](#fn-withiteration)
* [`fn withIterationMixin()`](#fn-withiterationmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj iteration`](#obj-iteration)
  * [`fn new()`](#fn-iterationnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.packer_channel.new` injects a new `hcp_packer_channel` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.packer_channel.new('some_id')

You can get the reference to the `id` field of the created `hcp.packer_channel` using the reference:

    $._ref.hcp_packer_channel.some_id.get('id')

This is the same as directly entering `"${ hcp_packer_channel.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `bucket_name` (`string`): The slug of the HCP Packer Registry image bucket where the channel should be created in.
  - `name` (`string`): The name of the channel being managed.
  - `project_id` (`string`): 
The ID of the HCP project where this channel is located in. 
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `iteration` (`list[obj]`): The iteration assigned to the channel. When `null`, the `iteration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel.iteration.new](#fn-iterationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.packer_channel.newAttrs` constructs a new object with attributes and blocks configured for the `packer_channel`
Terraform resource.

Unlike [hcp.packer_channel.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket_name` (`string`): The slug of the HCP Packer Registry image bucket where the channel should be created in.
  - `name` (`string`): The name of the channel being managed.
  - `project_id` (`string`): 
The ID of the HCP project where this channel is located in. 
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `iteration` (`list[obj]`): The iteration assigned to the channel. When `null`, the `iteration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel.iteration.new](#fn-iterationnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `packer_channel` resource into the root Terraform configuration.


### fn withBucketName

```ts
withBucketName()
```

`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the bucket_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket_name` field.


### fn withIteration

```ts
withIteration()
```

`hcp.list[obj].withIteration` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the iteration field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withIterationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `iteration` field.


### fn withIterationMixin

```ts
withIterationMixin()
```

`hcp.list[obj].withIterationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the iteration field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withIteration](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `iteration` field.


### fn withName

```ts
withName()
```

`hcp.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


## obj iteration



### fn iteration.new

```ts
new()
```


`hcp.packer_channel.iteration.new` constructs a new object with attributes and blocks configured for the `iteration`
Terraform sub block.



**Args**:
  - `fingerprint` (`string`): The fingerprint of the iteration assigned to the channel. When `null`, the `fingerprint` field will be omitted from the resulting object.
  - `incremental_version` (`number`): The incremental_version of the iteration assigned to the channel. When `null`, the `incremental_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `iteration` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.packer_channel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
