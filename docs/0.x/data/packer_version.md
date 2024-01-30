---
permalink: /data/packer_version/
---

# data.packer_version

`packer_version` represents the `hcp_packer_version` Terraform data source.

The HCP Packer Version data source retrieves information about a Version.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBucketName()`](#fn-withbucketname)
* [`fn withChannelName()`](#fn-withchannelname)
* [`fn withProjectId()`](#fn-withprojectid)

## Fields

### fn new

```ts
new()
```


`hcp.data.packer_version.new` injects a new `data_hcp_packer_version` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.packer_version.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.packer_version` using the reference:

    $._ref.data_hcp_packer_version.some_id.get('id')

This is the same as directly entering `"${ data_hcp_packer_version.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `bucket_name` (`string`): The name of the HCP Packer Bucket where the Version is located
  - `channel_name` (`string`): 
The name of the HCP Packer Channel the Version is assigned to.
The version currently assigned to the Channel will be fetched.
  - `project_id` (`string`): The ID of the HCP Organization where the Version is located When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.packer_version.newAttrs` constructs a new object with attributes and blocks configured for the `packer_version`
Terraform data source.

Unlike [hcp.data.packer_version.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bucket_name` (`string`): The name of the HCP Packer Bucket where the Version is located
  - `channel_name` (`string`): 
The name of the HCP Packer Channel the Version is assigned to.
The version currently assigned to the Channel will be fetched.
  - `project_id` (`string`): The ID of the HCP Organization where the Version is located When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `packer_version` data source into the root Terraform configuration.


### fn withBucketName

```ts
withBucketName()
```

`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the bucket_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `bucket_name` field.


### fn withChannelName

```ts
withChannelName()
```

`hcp.string.withChannelName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the channel_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `channel_name` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.
