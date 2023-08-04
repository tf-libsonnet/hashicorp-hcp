local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='packer_channel', url='', help='`packer_channel` represents the `hcp_packer_channel` Terraform resource.\n\nThe Packer Channel resource allows you to manage a bucket channel within an active HCP Packer Registry.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.packer_channel.new` injects a new `hcp_packer_channel` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.packer_channel.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.packer_channel` using the reference:\n\n    $._ref.hcp_packer_channel.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_packer_channel.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The slug of the HCP Packer Registry bucket where the channel should be created.\n  - `name` (`string`): The name of the channel being managed.\n  - `project_id` (`string`): \nThe ID of the HCP project where this channel is located. \nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `restricted` (`bool`): If true, the channel is only visible to users with permission to create and manage it. If false, the channel is visible to every member of the organization. When `null`, the `restricted` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket_name,
    name,
    project_id=null,
    restricted=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_packer_channel',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      name=name,
      project_id=project_id,
      restricted=restricted,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.packer_channel.newAttrs` constructs a new object with attributes and blocks configured for the `packer_channel`\nTerraform resource.\n\nUnlike [hcp.packer_channel.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The slug of the HCP Packer Registry bucket where the channel should be created.\n  - `name` (`string`): The name of the channel being managed.\n  - `project_id` (`string`): \nThe ID of the HCP project where this channel is located. \nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `restricted` (`bool`): If true, the channel is only visible to users with permission to create and manage it. If false, the channel is visible to every member of the organization. When `null`, the `restricted` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `packer_channel` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    name,
    project_id=null,
    restricted=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    name: name,
    project_id: project_id,
    restricted: restricted,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.packer_channel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      default=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      default: default,
      delete: delete,
      update: update,
    }),
  },
  '#withBucketName':: d.fn(help='`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(resourceLabel, value): {
    resource+: {
      hcp_packer_channel+: {
        [resourceLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`hcp.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      hcp_packer_channel+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_packer_channel+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withRestricted':: d.fn(help='`hcp.bool.withRestricted` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the restricted field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `restricted` field.\n', args=[]),
  withRestricted(resourceLabel, value): {
    resource+: {
      hcp_packer_channel+: {
        [resourceLabel]+: {
          restricted: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_packer_channel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_packer_channel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
