---
permalink: /log_streaming_destination/
---

# log_streaming_destination

`log_streaming_destination` represents the `hcp_log_streaming_destination` Terraform resource.

The Streaming Destination resource allows users to configure an external log system to stream HCP logs to.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withSplunkCloud()`](#fn-withsplunkcloud)
* [`fn withSplunkCloudMixin()`](#fn-withsplunkcloudmixin)

## Fields

### fn new

```ts
new()
```


`hcp.log_streaming_destination.new` injects a new `hcp_log_streaming_destination` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.log_streaming_destination.new('some_id')

You can get the reference to the `id` field of the created `hcp.log_streaming_destination` using the reference:

    $._ref.hcp_log_streaming_destination.some_id.get('id')

This is the same as directly entering `"${ hcp_log_streaming_destination.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): The HCP Log Streaming Destination’s name.
  - `splunk_cloud` (`obj`): Set the `splunk_cloud` field on the resulting resource block.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.log_streaming_destination.newAttrs` constructs a new object with attributes and blocks configured for the `log_streaming_destination`
Terraform resource.

Unlike [hcp.log_streaming_destination.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The HCP Log Streaming Destination’s name.
  - `splunk_cloud` (`obj`): Set the `splunk_cloud` field on the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `log_streaming_destination` resource into the root Terraform configuration.


### fn withName

```ts
withName()
```

`hcp.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withSplunkCloud

```ts
withSplunkCloud()
```

`hcp.obj.withSplunkCloud` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the splunk_cloud field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `splunk_cloud` field.


### fn withSplunkCloudMixin

```ts
withSplunkCloudMixin()
```

`hcp.obj.withSplunkCloudMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the splunk_cloud field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withSplunkCloud](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `splunk_cloud` field.
