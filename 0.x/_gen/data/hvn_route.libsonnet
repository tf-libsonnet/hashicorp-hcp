local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='hvn_route', url='', help='`hvn_route` represents the `hcp_hvn_route` Terraform data source.\n\nThe HVN route data source provides information about an existing HVN route.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.hvn_route.new` injects a new `data_hcp_hvn_route` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.hvn_route.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.hvn_route` using the reference:\n\n    $._ref.data_hcp_hvn_route.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_hvn_route.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).\n  - `hvn_route_id` (`string`): The ID of the HVN route.\n  - `project_id` (`string`): The ID of the HCP project where the HVN route is located. Always matches the project ID in `hvn_link`. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting data source block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.hvn_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    hvn_link,
    hvn_route_id,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_hvn_route',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      hvn_link=hvn_link,
      hvn_route_id=hvn_route_id,
      project_id=project_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.hvn_route.newAttrs` constructs a new object with attributes and blocks configured for the `hvn_route`\nTerraform data source.\n\nUnlike [hcp.data.hvn_route.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).\n  - `hvn_route_id` (`string`): The ID of the HVN route.\n  - `project_id` (`string`): The ID of the HCP project where the HVN route is located. Always matches the project ID in `hvn_link`. Setting this attribute is deprecated, but it will remain usable in read-only form. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.hvn_route.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `hvn_route` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hvn_link,
    hvn_route_id,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    hvn_link: hvn_link,
    hvn_route_id: hvn_route_id,
    project_id: project_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.hvn_route.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withHvnLink':: d.fn(help='`hcp.string.withHvnLink` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the hvn_link field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_link` field.\n', args=[]),
  withHvnLink(dataSrcLabel, value): {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  '#withHvnRouteId':: d.fn(help='`hcp.string.withHvnRouteId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the hvn_route_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_route_id` field.\n', args=[]),
  withHvnRouteId(dataSrcLabel, value): {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          hvn_route_id: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(dataSrcLabel, value): {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value): {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value): {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
