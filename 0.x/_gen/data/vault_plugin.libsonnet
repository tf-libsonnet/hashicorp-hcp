local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vault_plugin', url='', help='`vault_plugin` represents the `hcp_vault_plugin` Terraform data source.\n\nThe Vault plugin data source provides information about an existing HCP Vault plugin\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.vault_plugin.new` injects a new `data_hcp_vault_plugin` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.vault_plugin.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.vault_plugin` using the reference:\n\n    $._ref.data_hcp_vault_plugin.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_vault_plugin.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the HCP Vault cluster.\n  - `plugin_name` (`string`): The name of the plugin - Valid options for plugin name - \u0026#39;venafi-pki-backend\u0026#39;\n  - `plugin_type` (`string`): The type of the plugin - Valid options for plugin type - \u0026#39;SECRET\u0026#39;, \u0026#39;AUTH\u0026#39;, \u0026#39;DATABASE\u0026#39;\n  - `project_id` (`string`): \nThe ID of the HCP project where the HCP Vault cluster is located. \nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting data source block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_plugin.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    cluster_id,
    plugin_name,
    plugin_type,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_vault_plugin',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      plugin_name=plugin_name,
      plugin_type=plugin_type,
      project_id=project_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.vault_plugin.newAttrs` constructs a new object with attributes and blocks configured for the `vault_plugin`\nTerraform data source.\n\nUnlike [hcp.data.vault_plugin.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the HCP Vault cluster.\n  - `plugin_name` (`string`): The name of the plugin - Valid options for plugin name - &#39;venafi-pki-backend&#39;\n  - `plugin_type` (`string`): The type of the plugin - Valid options for plugin type - &#39;SECRET&#39;, &#39;AUTH&#39;, &#39;DATABASE&#39;\n  - `project_id` (`string`): \nThe ID of the HCP project where the HCP Vault cluster is located. \nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_plugin.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vault_plugin` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    plugin_name,
    plugin_type,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    plugin_name: plugin_name,
    plugin_type: plugin_type,
    project_id: project_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.vault_plugin.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withClusterId':: d.fn(help='`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(dataSrcLabel, value): {
    data+: {
      hcp_vault_plugin+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withPluginName':: d.fn(help='`hcp.string.withPluginName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the plugin_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `plugin_name` field.\n', args=[]),
  withPluginName(dataSrcLabel, value): {
    data+: {
      hcp_vault_plugin+: {
        [dataSrcLabel]+: {
          plugin_name: value,
        },
      },
    },
  },
  '#withPluginType':: d.fn(help='`hcp.string.withPluginType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the plugin_type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `plugin_type` field.\n', args=[]),
  withPluginType(dataSrcLabel, value): {
    data+: {
      hcp_vault_plugin+: {
        [dataSrcLabel]+: {
          plugin_type: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(dataSrcLabel, value): {
    data+: {
      hcp_vault_plugin+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value): {
    data+: {
      hcp_vault_plugin+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value): {
    data+: {
      hcp_vault_plugin+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
