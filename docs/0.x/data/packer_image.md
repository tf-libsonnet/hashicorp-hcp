---
permalink: /data/packer_image/
---

# data.packer_image

`packer_image` represents the `hcp_packer_image` Terraform data source.

The Packer Image data source iteration gets the most recent iteration (or build) of an image, given an iteration id or a channel.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucketName()`](#fn-withbucketname)
* [`fn withChannel()`](#fn-withchannel)
* [`fn withCloudProvider()`](#fn-withcloudprovider)
* [`fn withComponentType()`](#fn-withcomponenttype)
* [`fn withIterationId()`](#fn-withiterationid)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.data.packer_image.new` injects a new `data_hcp_packer_image` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.packer_image.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.packer_image` using the reference:

    $._ref.data_hcp_packer_image.some_id.get('id')

This is the same as directly entering `"${ data_hcp_packer_image.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `bucket_name` (`string`): The slug of the HCP Packer Registry image bucket to pull from.
  - `channel` (`string`): The channel that points to the version of the image being retrieved. Either this or `iteration_id` must be specified. Note: will incur a billable request When `null`, the `channel` field will be omitted from the resulting object.
  - `cloud_provider` (`string`): Name of the cloud provider this image is stored-in.
  - `component_type` (`string`): Name of the builder that built this image. Ex: `amazon-ebs.example`. When `null`, the `component_type` field will be omitted from the resulting object.
  - `iteration_id` (`string`): The iteration from which to get the image. Either this or `channel` must be specified. When `null`, the `iteration_id` field will be omitted from the resulting object.
  - `region` (`string`): Region this image is stored in, if any.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.packer_image.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.packer_image.newAttrs` constructs a new object with attributes and blocks configured for the `packer_image`
Terraform data source.

Unlike [hcp.data.packer_image.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket_name` (`string`): The slug of the HCP Packer Registry image bucket to pull from.
  - `channel` (`string`): The channel that points to the version of the image being retrieved. Either this or `iteration_id` must be specified. Note: will incur a billable request When `null`, the `channel` field will be omitted from the resulting object.
  - `cloud_provider` (`string`): Name of the cloud provider this image is stored-in.
  - `component_type` (`string`): Name of the builder that built this image. Ex: `amazon-ebs.example`. When `null`, the `component_type` field will be omitted from the resulting object.
  - `iteration_id` (`string`): The iteration from which to get the image. Either this or `channel` must be specified. When `null`, the `iteration_id` field will be omitted from the resulting object.
  - `region` (`string`): Region this image is stored in, if any.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.packer_image.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `packer_image` data source into the root Terraform configuration.


### fn withBucketName

```ts
withBucketName()
```

`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the bucket_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket_name` field.


### fn withChannel

```ts
withChannel()
```

`hcp.string.withChannel` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the channel field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `channel` field.


### fn withCloudProvider

```ts
withCloudProvider()
```

`hcp.string.withCloudProvider` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the cloud_provider field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cloud_provider` field.


### fn withComponentType

```ts
withComponentType()
```

`hcp.string.withComponentType` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the component_type field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `component_type` field.


### fn withIterationId

```ts
withIterationId()
```

`hcp.string.withIterationId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the iteration_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `iteration_id` field.


### fn withRegion

```ts
withRegion()
```

`hcp.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the region field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


`hcp.packer_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
