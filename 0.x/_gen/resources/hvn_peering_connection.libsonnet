local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='hvn_peering_connection', url='', help='`hvn_peering_connection` represents the `hcp_hvn_peering_connection` Terraform resource.\n\nThe HVN peering connection resource allows you to manage a peering connection between HVNs.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.hvn_peering_connection.new` injects a new `hcp_hvn_peering_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.hvn_peering_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.hvn_peering_connection` using the reference:\n\n    $._ref.hcp_hvn_peering_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_hvn_peering_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `hvn_1` (`string`): The unique URL of one of the HVNs being peered.\n  - `hvn_2` (`string`): The unique URL of one of the HVNs being peered.\n  - `project_id` (`string`): The ID of the HCP project where HVN peering connection is located. Always matches hvn_1\u0026#39;s project ID. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hvn_1,
    hvn_2,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_hvn_peering_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      hvn_1=hvn_1,
      hvn_2=hvn_2,
      project_id=project_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.hvn_peering_connection.newAttrs` constructs a new object with attributes and blocks configured for the `hvn_peering_connection`\nTerraform resource.\n\nUnlike [hcp.hvn_peering_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hvn_1` (`string`): The unique URL of one of the HVNs being peered.\n  - `hvn_2` (`string`): The unique URL of one of the HVNs being peered.\n  - `project_id` (`string`): The ID of the HCP project where HVN peering connection is located. Always matches hvn_1&#39;s project ID. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_peering_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `hvn_peering_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hvn_1,
    hvn_2,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    hvn_1: hvn_1,
    hvn_2: hvn_2,
    project_id: project_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.hvn_peering_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      default=null,
      delete=null
    ):: std.prune(a={
      create: create,
      default: default,
      delete: delete,
    }),
  },
  '#withHvn1':: d.fn(help='`hcp.string.withHvn1` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_1 field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_1` field.\n', args=[]),
  withHvn1(resourceLabel, value): {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          hvn_1: value,
        },
      },
    },
  },
  '#withHvn2':: d.fn(help='`hcp.string.withHvn2` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_2 field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_2` field.\n', args=[]),
  withHvn2(resourceLabel, value): {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          hvn_2: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
