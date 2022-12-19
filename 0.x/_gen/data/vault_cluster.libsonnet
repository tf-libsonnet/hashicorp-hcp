local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vault_cluster', url='', help='`vault_cluster` represents the `hcp_vault_cluster` Terraform data source.\n\nThe cluster data source provides information about an existing HCP Vault cluster.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  audit_log_config:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `audit_log_config` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  metrics_config:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.metrics_config.new` constructs a new object with attributes and blocks configured for the `metrics_config`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `metrics_config` sub block.\n', args=[]),
    new(

    ):: std.prune(a={}),
  },
  '#new':: d.fn(help="\n`hcp.data.vault_cluster.new` injects a new `data_hcp_vault_cluster` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.vault_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.vault_cluster` using the reference:\n\n    $._ref.data_hcp_vault_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_vault_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the HCP Vault cluster.\n  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.audit_log_config.new](#fn-vaultclusterauditlogconfignew) constructor.\n  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.metrics_config.new](#fn-vaultclustermetricsconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.timeouts.new](#fn-vaultclustertimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    cluster_id,
    audit_log_config=null,
    metrics_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_vault_cluster',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      audit_log_config=audit_log_config,
      cluster_id=cluster_id,
      metrics_config=metrics_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.vault_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `vault_cluster`\nTerraform data source.\n\nUnlike [hcp.data.vault_cluster.new](#fn-vaultclusternew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the HCP Vault cluster.\n  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.audit_log_config.new](#fn-vaultclusterauditlogconfignew) constructor.\n  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.metrics_config.new](#fn-vaultclustermetricsconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.timeouts.new](#fn-vaultclustertimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vault_cluster` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    audit_log_config=null,
    metrics_config=null,
    timeouts=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    cluster_id: cluster_id,
    metrics_config: metrics_config,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withAuditLogConfig':: d.fn(help='`hcp.list[obj].withAuditLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the audit_log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withAuditLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.\n', args=[]),
  withAuditLogConfig(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  '#withAuditLogConfigMixin':: d.fn(help='`hcp.list[obj].withAuditLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the audit_log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withAuditLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.\n', args=[]),
  withAuditLogConfigMixin(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterId':: d.fn(help='`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withMetricsConfig':: d.fn(help='`hcp.list[obj].withMetricsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the metrics_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withMetricsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metrics_config` field.\n', args=[]),
  withMetricsConfig(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          metrics_config: value,
        },
      },
    },
  },
  '#withMetricsConfigMixin':: d.fn(help='`hcp.list[obj].withMetricsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the metrics_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withMetricsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metrics_config` field.\n', args=[]),
  withMetricsConfigMixin(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          metrics_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value): {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
