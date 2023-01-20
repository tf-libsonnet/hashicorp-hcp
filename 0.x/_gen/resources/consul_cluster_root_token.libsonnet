local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='consul_cluster_root_token', url='', help='`consul_cluster_root_token` represents the `hcp_consul_cluster_root_token` Terraform resource.\n\nThe cluster root token resource is the token used to bootstrap the cluster&#39;s ACL system. You can also generate this root token from the HCP Consul UI.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.consul_cluster_root_token.new` injects a new `hcp_consul_cluster_root_token` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.consul_cluster_root_token.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.consul_cluster_root_token` using the reference:\n\n    $._ref.hcp_consul_cluster_root_token.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_consul_cluster_root_token.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the HCP Consul cluster.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster_root_token.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_consul_cluster_root_token',
    label=resourceLabel,
    attrs=self.newAttrs(cluster_id=cluster_id, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.consul_cluster_root_token.newAttrs` constructs a new object with attributes and blocks configured for the `consul_cluster_root_token`\nTerraform resource.\n\nUnlike [hcp.consul_cluster_root_token.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the HCP Consul cluster.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster_root_token.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `consul_cluster_root_token` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.consul_cluster_root_token.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withClusterId':: d.fn(help='`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster_root_token+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster_root_token+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster_root_token+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
