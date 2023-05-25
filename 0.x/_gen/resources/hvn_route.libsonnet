local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='hvn_route', url='', help='`hvn_route` represents the `hcp_hvn_route` Terraform resource.\n\nThe HVN route resource allows you to manage an HVN route.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.hvn_route.new` injects a new `hcp_hvn_route` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.hvn_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.hvn_route` using the reference:\n\n    $._ref.hcp_hvn_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_hvn_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `destination_cidr` (`string`): The destination CIDR of the HVN route.\n  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).\n  - `hvn_route_id` (`string`): The ID of the HVN route.\n  - `project_id` (`string`): The ID of the HCP project where the HVN route is located. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `target_link` (`string`): A unique URL identifying the target of the HVN route. Examples of the target: [`aws_network_peering`](aws_network_peering.md), [`aws_transit_gateway_attachment`](aws_transit_gateway_attachment.md)\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    destination_cidr,
    hvn_link,
    hvn_route_id,
    target_link,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_hvn_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      destination_cidr=destination_cidr,
      hvn_link=hvn_link,
      hvn_route_id=hvn_route_id,
      project_id=project_id,
      target_link=target_link,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.hvn_route.newAttrs` constructs a new object with attributes and blocks configured for the `hvn_route`\nTerraform resource.\n\nUnlike [hcp.hvn_route.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `destination_cidr` (`string`): The destination CIDR of the HVN route.\n  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).\n  - `hvn_route_id` (`string`): The ID of the HVN route.\n  - `project_id` (`string`): The ID of the HCP project where the HVN route is located. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `target_link` (`string`): A unique URL identifying the target of the HVN route. Examples of the target: [`aws_network_peering`](aws_network_peering.md), [`aws_transit_gateway_attachment`](aws_transit_gateway_attachment.md)\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `hvn_route` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    destination_cidr,
    hvn_link,
    hvn_route_id,
    target_link,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    destination_cidr: destination_cidr,
    hvn_link: hvn_link,
    hvn_route_id: hvn_route_id,
    project_id: project_id,
    target_link: target_link,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.hvn_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDestinationCidr':: d.fn(help='`hcp.string.withDestinationCidr` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the destination_cidr field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `destination_cidr` field.\n', args=[]),
  withDestinationCidr(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          destination_cidr: value,
        },
      },
    },
  },
  '#withHvnLink':: d.fn(help='`hcp.string.withHvnLink` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_link field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_link` field.\n', args=[]),
  withHvnLink(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  '#withHvnRouteId':: d.fn(help='`hcp.string.withHvnRouteId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_route_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_route_id` field.\n', args=[]),
  withHvnRouteId(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          hvn_route_id: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTargetLink':: d.fn(help='`hcp.string.withTargetLink` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target_link field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_link` field.\n', args=[]),
  withTargetLink(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          target_link: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
