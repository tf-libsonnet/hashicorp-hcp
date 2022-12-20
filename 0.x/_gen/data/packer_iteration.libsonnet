local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='packer_iteration', url='', help='`packer_iteration` represents the `hcp_packer_iteration` Terraform data source.\n\nThe Packer Image data source iteration gets the most recent iteration (or build) of an image, given a channel.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.packer_iteration.new` injects a new `data_hcp_packer_iteration` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.packer_iteration.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.packer_iteration` using the reference:\n\n    $._ref.data_hcp_packer_iteration.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_packer_iteration.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The slug of the HCP Packer Registry image bucket to pull from.\n  - `channel` (`string`): The channel that points to the version of the image you want.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.packer_iteration.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    bucket_name,
    channel,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_packer_iteration',
    label=dataSrcLabel,
    attrs=self.newAttrs(bucket_name=bucket_name, channel=channel, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.packer_iteration.newAttrs` constructs a new object with attributes and blocks configured for the `packer_iteration`\nTerraform data source.\n\nUnlike [hcp.data.packer_iteration.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The slug of the HCP Packer Registry image bucket to pull from.\n  - `channel` (`string`): The channel that points to the version of the image you want.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.packer_iteration.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `packer_iteration` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    channel,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel: channel,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.packer_iteration.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withBucketName':: d.fn(help='`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(dataSrcLabel, value): {
    data+: {
      hcp_packer_iteration+: {
        [dataSrcLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withChannel':: d.fn(help='`hcp.string.withChannel` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the channel field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel` field.\n', args=[]),
  withChannel(dataSrcLabel, value): {
    data+: {
      hcp_packer_iteration+: {
        [dataSrcLabel]+: {
          channel: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value): {
    data+: {
      hcp_packer_iteration+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value): {
    data+: {
      hcp_packer_iteration+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
