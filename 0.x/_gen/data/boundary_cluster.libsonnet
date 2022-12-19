local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='boundary_cluster', url='', help='`boundary_cluster` represents the `hcp_boundary_cluster` Terraform data source.\n\nThe Boundary cluster data source provides information about an existing HCP Boundary cluster.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.boundary_cluster.new` injects a new `data_hcp_boundary_cluster` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.boundary_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.boundary_cluster` using the reference:\n\n    $._ref.data_hcp_boundary_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_boundary_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the Boundary cluster\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.boundary_cluster.timeouts.new](#fn-boundaryclustertimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    cluster_id,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_boundary_cluster',
    label=dataSrcLabel,
    attrs=self.newAttrs(cluster_id=cluster_id, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.boundary_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `boundary_cluster`\nTerraform data source.\n\nUnlike [hcp.data.boundary_cluster.new](#fn-boundaryclusternew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the Boundary cluster\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.boundary_cluster.timeouts.new](#fn-boundaryclustertimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `boundary_cluster` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.boundary_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withClusterId':: d.fn(help='`hcp.boundary_cluster.withClusterId` constructs a mixin object that can be merged into the `boundary_cluster`\nTerraform data source block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(dataSrcLabel, value):: {
    data+: {
      hcp_boundary_cluster+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.boundary_cluster.withTimeouts` constructs a mixin object that can be merged into the `boundary_cluster`\nTerraform data source block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_boundary_cluster+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.boundary_cluster.withTimeoutsMixin` constructs a mixin object that can be merged into the `boundary_cluster`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.boundary_cluster.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_boundary_cluster+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
