local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='packer_version', url='', help='`packer_version` represents the `hcp_packer_version` Terraform data source.\n\nThe HCP Packer Version data source retrieves information about a Version.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.packer_version.new` injects a new `data_hcp_packer_version` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.packer_version.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.packer_version` using the reference:\n\n    $._ref.data_hcp_packer_version.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_packer_version.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The name of the HCP Packer Bucket where the Version is located\n  - `channel_name` (`string`): \nThe name of the HCP Packer Channel the Version is assigned to.\nThe version currently assigned to the Channel will be fetched.\n  - `project_id` (`string`): The ID of the HCP Organization where the Version is located When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    bucket_name,
    channel_name,
    project_id=null,
    _meta={}
  ):: tf.withData(
    type='hcp_packer_version',
    label=dataSrcLabel,
    attrs=self.newAttrs(bucket_name=bucket_name, channel_name=channel_name, project_id=project_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.packer_version.newAttrs` constructs a new object with attributes and blocks configured for the `packer_version`\nTerraform data source.\n\nUnlike [hcp.data.packer_version.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The name of the HCP Packer Bucket where the Version is located\n  - `channel_name` (`string`): \nThe name of the HCP Packer Channel the Version is assigned to.\nThe version currently assigned to the Channel will be fetched.\n  - `project_id` (`string`): The ID of the HCP Organization where the Version is located When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `packer_version` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    channel_name,
    project_id=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel_name: channel_name,
    project_id: project_id,
  }),
  '#withBucketName':: d.fn(help='`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(dataSrcLabel, value): {
    data+: {
      hcp_packer_version+: {
        [dataSrcLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withChannelName':: d.fn(help='`hcp.string.withChannelName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the channel_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel_name` field.\n', args=[]),
  withChannelName(dataSrcLabel, value): {
    data+: {
      hcp_packer_version+: {
        [dataSrcLabel]+: {
          channel_name: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(dataSrcLabel, value): {
    data+: {
      hcp_packer_version+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
}
