local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='log_streaming_destination', url='', help='`log_streaming_destination` represents the `hcp_log_streaming_destination` Terraform resource.\n\nThe Streaming Destination resource allows users to configure an external log system to stream HCP logs to.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.log_streaming_destination.new` injects a new `hcp_log_streaming_destination` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.log_streaming_destination.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.log_streaming_destination` using the reference:\n\n    $._ref.hcp_log_streaming_destination.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_log_streaming_destination.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): The HCP Log Streaming Destination’s name.\n  - `splunk_cloud` (`obj`): Set the `splunk_cloud` field on the resulting resource block.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    splunk_cloud,
    _meta={}
  ):: tf.withResource(
    type='hcp_log_streaming_destination',
    label=resourceLabel,
    attrs=self.newAttrs(name=name, splunk_cloud=splunk_cloud),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.log_streaming_destination.newAttrs` constructs a new object with attributes and blocks configured for the `log_streaming_destination`\nTerraform resource.\n\nUnlike [hcp.log_streaming_destination.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The HCP Log Streaming Destination’s name.\n  - `splunk_cloud` (`obj`): Set the `splunk_cloud` field on the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `log_streaming_destination` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    splunk_cloud
  ):: std.prune(a={
    name: name,
    splunk_cloud: splunk_cloud,
  }),
  '#withName':: d.fn(help='`hcp.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      hcp_log_streaming_destination+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withSplunkCloud':: d.fn(help='`hcp.obj.withSplunkCloud` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the splunk_cloud field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `splunk_cloud` field.\n', args=[]),
  withSplunkCloud(resourceLabel, value): {
    resource+: {
      hcp_log_streaming_destination+: {
        [resourceLabel]+: {
          splunk_cloud: value,
        },
      },
    },
  },
  '#withSplunkCloudMixin':: d.fn(help='`hcp.obj.withSplunkCloudMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the splunk_cloud field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withSplunkCloud](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `splunk_cloud` field.\n', args=[]),
  withSplunkCloudMixin(resourceLabel, value):: {
    resource+: {
      hcp_log_streaming_destination+: {
        [resourceLabel]+: {
          splunk_cloud+: value,
        },
      },
    },
  },
}
