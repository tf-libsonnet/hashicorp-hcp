local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='packer_channel_assignment', url='', help='`packer_channel_assignment` represents the `hcp_packer_channel_assignment` Terraform resource.\n\nThe Packer Channel Assignment resource allows you to manage the version assigned to a channel in an active HCP Packer Registry.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.packer_channel_assignment.new` injects a new `hcp_packer_channel_assignment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.packer_channel_assignment.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.packer_channel_assignment` using the reference:\n\n    $._ref.hcp_packer_channel_assignment.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_packer_channel_assignment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The slug of the HCP Packer bucket where the channel is located.\n  - `channel_name` (`string`): The name of the HCP Packer channel being managed.\n  - `iteration_fingerprint` (`string`): The fingerprint of the version assigned to the channel. When `null`, the `iteration_fingerprint` field will be omitted from the resulting object.\n  - `project_id` (`string`): \nThe ID of the HCP project where the channel is located. \nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `version_fingerprint` (`string`): The fingerprint of the version assigned to the channel. When `null`, the `version_fingerprint` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel_assignment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    bucket_name,
    channel_name,
    iteration_fingerprint=null,
    project_id=null,
    timeouts=null,
    version_fingerprint=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_packer_channel_assignment',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      channel_name=channel_name,
      iteration_fingerprint=iteration_fingerprint,
      project_id=project_id,
      timeouts=timeouts,
      version_fingerprint=version_fingerprint
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.packer_channel_assignment.newAttrs` constructs a new object with attributes and blocks configured for the `packer_channel_assignment`\nTerraform resource.\n\nUnlike [hcp.packer_channel_assignment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The slug of the HCP Packer bucket where the channel is located.\n  - `channel_name` (`string`): The name of the HCP Packer channel being managed.\n  - `iteration_fingerprint` (`string`): The fingerprint of the version assigned to the channel. When `null`, the `iteration_fingerprint` field will be omitted from the resulting object.\n  - `project_id` (`string`): \nThe ID of the HCP project where the channel is located. \nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `version_fingerprint` (`string`): The fingerprint of the version assigned to the channel. When `null`, the `version_fingerprint` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.packer_channel_assignment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `packer_channel_assignment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    channel_name,
    iteration_fingerprint=null,
    project_id=null,
    timeouts=null,
    version_fingerprint=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel_name: channel_name,
    iteration_fingerprint: iteration_fingerprint,
    project_id: project_id,
    timeouts: timeouts,
    version_fingerprint: version_fingerprint,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.packer_channel_assignment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withChannelName':: d.fn(help='`hcp.string.withChannelName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the channel_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel_name` field.\n', args=[]),
  withChannelName(resourceLabel, value): {
    resource+: {
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          channel_name: value,
        },
      },
    },
  },
  '#withIterationFingerprint':: d.fn(help='`hcp.string.withIterationFingerprint` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the iteration_fingerprint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `iteration_fingerprint` field.\n', args=[]),
  withIterationFingerprint(resourceLabel, value): {
    resource+: {
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          iteration_fingerprint: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionFingerprint':: d.fn(help='`hcp.string.withVersionFingerprint` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version_fingerprint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_fingerprint` field.\n', args=[]),
  withVersionFingerprint(resourceLabel, value): {
    resource+: {
      hcp_packer_channel_assignment+: {
        [resourceLabel]+: {
          version_fingerprint: value,
        },
      },
    },
  },
}
