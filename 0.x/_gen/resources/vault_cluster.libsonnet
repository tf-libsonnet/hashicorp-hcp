local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vault_cluster', url='', help='`vault_cluster` represents the `hcp_vault_cluster` Terraform resource.\n\nThe Vault cluster resource allows you to manage an HCP Vault cluster.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  audit_log_config:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `datadog_api_key` (`string`): Datadog api key for streaming audit logs When `null`, the `datadog_api_key` field will be omitted from the resulting object.\n  - `datadog_region` (`string`): Datadog region for streaming audit logs When `null`, the `datadog_region` field will be omitted from the resulting object.\n  - `grafana_endpoint` (`string`): Grafana endpoint for streaming audit logs When `null`, the `grafana_endpoint` field will be omitted from the resulting object.\n  - `grafana_password` (`string`): Grafana password for streaming audit logs When `null`, the `grafana_password` field will be omitted from the resulting object.\n  - `grafana_user` (`string`): Grafana user for streaming audit logs When `null`, the `grafana_user` field will be omitted from the resulting object.\n  - `splunk_hecendpoint` (`string`): Splunk endpoint for streaming audit logs When `null`, the `splunk_hecendpoint` field will be omitted from the resulting object.\n  - `splunk_token` (`string`): Splunk token for streaming audit logs When `null`, the `splunk_token` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `audit_log_config` sub block.\n', args=[]),
    new(
      datadog_api_key=null,
      datadog_region=null,
      grafana_endpoint=null,
      grafana_password=null,
      grafana_user=null,
      splunk_hecendpoint=null,
      splunk_token=null
    ):: std.prune(a={
      datadog_api_key: datadog_api_key,
      datadog_region: datadog_region,
      grafana_endpoint: grafana_endpoint,
      grafana_password: grafana_password,
      grafana_user: grafana_user,
      splunk_hecendpoint: splunk_hecendpoint,
      splunk_token: splunk_token,
    }),
  },
  major_version_upgrade_config:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.major_version_upgrade_config.new` constructs a new object with attributes and blocks configured for the `major_version_upgrade_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `maintenance_window_day` (`string`): The maintenance day of the week for scheduled upgrades. Valid options for maintenance window day - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY` When `null`, the `maintenance_window_day` field will be omitted from the resulting object.\n  - `maintenance_window_time` (`string`): The maintenance time frame for scheduled upgrades. Valid options for maintenance window time - `WINDOW_12AM_4AM`, `WINDOW_6AM_10AM`, `WINDOW_12PM_4PM`, `WINDOW_6PM_10PM` When `null`, the `maintenance_window_time` field will be omitted from the resulting object.\n  - `upgrade_type` (`string`): The major upgrade type for the cluster. Valid options for upgrade type - `AUTOMATIC`, `SCHEDULED`, `MANUAL`\n\n**Returns**:\n  - An attribute object that represents the `major_version_upgrade_config` sub block.\n', args=[]),
    new(
      upgrade_type,
      maintenance_window_day=null,
      maintenance_window_time=null
    ):: std.prune(a={
      maintenance_window_day: maintenance_window_day,
      maintenance_window_time: maintenance_window_time,
      upgrade_type: upgrade_type,
    }),
  },
  metrics_config:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.metrics_config.new` constructs a new object with attributes and blocks configured for the `metrics_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `datadog_api_key` (`string`): Datadog api key for streaming metrics When `null`, the `datadog_api_key` field will be omitted from the resulting object.\n  - `datadog_region` (`string`): Datadog region for streaming metrics When `null`, the `datadog_region` field will be omitted from the resulting object.\n  - `grafana_endpoint` (`string`): Grafana endpoint for streaming metrics When `null`, the `grafana_endpoint` field will be omitted from the resulting object.\n  - `grafana_password` (`string`): Grafana password for streaming metrics When `null`, the `grafana_password` field will be omitted from the resulting object.\n  - `grafana_user` (`string`): Grafana user for streaming metrics When `null`, the `grafana_user` field will be omitted from the resulting object.\n  - `splunk_hecendpoint` (`string`): Splunk endpoint for streaming metrics When `null`, the `splunk_hecendpoint` field will be omitted from the resulting object.\n  - `splunk_token` (`string`): Splunk token for streaming metrics When `null`, the `splunk_token` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metrics_config` sub block.\n', args=[]),
    new(
      datadog_api_key=null,
      datadog_region=null,
      grafana_endpoint=null,
      grafana_password=null,
      grafana_user=null,
      splunk_hecendpoint=null,
      splunk_token=null
    ):: std.prune(a={
      datadog_api_key: datadog_api_key,
      datadog_region: datadog_region,
      grafana_endpoint: grafana_endpoint,
      grafana_password: grafana_password,
      grafana_user: grafana_user,
      splunk_hecendpoint: splunk_hecendpoint,
      splunk_token: splunk_token,
    }),
  },
  '#new':: d.fn(help="\n`hcp.vault_cluster.new` injects a new `hcp_vault_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.vault_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.vault_cluster` using the reference:\n\n    $._ref.hcp_vault_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_vault_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the HCP Vault cluster.\n  - `hvn_id` (`string`): The ID of the HVN this HCP Vault cluster is associated to.\n  - `min_vault_version` (`string`): The minimum Vault version to use when creating the cluster. If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_vault_version` field will be omitted from the resulting object.\n  - `paths_filter` (`list`): The performance replication [paths filter](https://developer.hashicorp.com/vault/tutorials/cloud-ops/vault-replication-terraform). Applies to performance replication secondaries only and operates in \u0026#34;deny\u0026#34; mode only. When `null`, the `paths_filter` field will be omitted from the resulting object.\n  - `primary_link` (`string`): The `self_link` of the HCP Vault Plus tier cluster which is the primary in the performance replication setup with this HCP Vault Plus tier cluster. If not specified, it is a standalone Plus tier HCP Vault cluster. When `null`, the `primary_link` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the HCP project where the Vault cluster is located. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.\n  - `tier` (`string`): Tier of the HCP Vault cluster. Valid options for tiers - `dev`, `starter_small`, `standard_small`, `standard_medium`, `standard_large`, `plus_small`, `plus_medium`, `plus_large`. See [pricing information](https://www.hashicorp.com/products/vault/pricing). Changing a cluster\u0026#39;s size or tier is only available to admins. See [Scale a cluster](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/vault-scaling). When `null`, the `tier` field will be omitted from the resulting object.\n  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.audit_log_config.new](#fn-audit_log_confignew) constructor.\n  - `major_version_upgrade_config` (`list[obj]`): The Major Version Upgrade configuration. When `null`, the `major_version_upgrade_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.major_version_upgrade_config.new](#fn-major_version_upgrade_confignew) constructor.\n  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.metrics_config.new](#fn-metrics_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    hvn_id,
    audit_log_config=null,
    major_version_upgrade_config=null,
    metrics_config=null,
    min_vault_version=null,
    paths_filter=null,
    primary_link=null,
    project_id=null,
    public_endpoint=null,
    tier=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_vault_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      audit_log_config=audit_log_config,
      cluster_id=cluster_id,
      hvn_id=hvn_id,
      major_version_upgrade_config=major_version_upgrade_config,
      metrics_config=metrics_config,
      min_vault_version=min_vault_version,
      paths_filter=paths_filter,
      primary_link=primary_link,
      project_id=project_id,
      public_endpoint=public_endpoint,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.vault_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `vault_cluster`\nTerraform resource.\n\nUnlike [hcp.vault_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the HCP Vault cluster.\n  - `hvn_id` (`string`): The ID of the HVN this HCP Vault cluster is associated to.\n  - `min_vault_version` (`string`): The minimum Vault version to use when creating the cluster. If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_vault_version` field will be omitted from the resulting object.\n  - `paths_filter` (`list`): The performance replication [paths filter](https://developer.hashicorp.com/vault/tutorials/cloud-ops/vault-replication-terraform). Applies to performance replication secondaries only and operates in &#34;deny&#34; mode only. When `null`, the `paths_filter` field will be omitted from the resulting object.\n  - `primary_link` (`string`): The `self_link` of the HCP Vault Plus tier cluster which is the primary in the performance replication setup with this HCP Vault Plus tier cluster. If not specified, it is a standalone Plus tier HCP Vault cluster. When `null`, the `primary_link` field will be omitted from the resulting object.\n  - `project_id` (`string`): The ID of the HCP project where the Vault cluster is located. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.\n  - `tier` (`string`): Tier of the HCP Vault cluster. Valid options for tiers - `dev`, `starter_small`, `standard_small`, `standard_medium`, `standard_large`, `plus_small`, `plus_medium`, `plus_large`. See [pricing information](https://www.hashicorp.com/products/vault/pricing). Changing a cluster&#39;s size or tier is only available to admins. See [Scale a cluster](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/vault-scaling). When `null`, the `tier` field will be omitted from the resulting object.\n  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.audit_log_config.new](#fn-audit_log_confignew) constructor.\n  - `major_version_upgrade_config` (`list[obj]`): The Major Version Upgrade configuration. When `null`, the `major_version_upgrade_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.major_version_upgrade_config.new](#fn-major_version_upgrade_confignew) constructor.\n  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.metrics_config.new](#fn-metrics_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vault_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    hvn_id,
    audit_log_config=null,
    major_version_upgrade_config=null,
    metrics_config=null,
    min_vault_version=null,
    paths_filter=null,
    primary_link=null,
    project_id=null,
    public_endpoint=null,
    tier=null,
    timeouts=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    cluster_id: cluster_id,
    hvn_id: hvn_id,
    major_version_upgrade_config: major_version_upgrade_config,
    metrics_config: metrics_config,
    min_vault_version: min_vault_version,
    paths_filter: paths_filter,
    primary_link: primary_link,
    project_id: project_id,
    public_endpoint: public_endpoint,
    tier: tier,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.vault_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuditLogConfig':: d.fn(help='`hcp.list[obj].withAuditLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the audit_log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withAuditLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.\n', args=[]),
  withAuditLogConfig(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  '#withAuditLogConfigMixin':: d.fn(help='`hcp.list[obj].withAuditLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the audit_log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withAuditLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.\n', args=[]),
  withAuditLogConfigMixin(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterId':: d.fn(help='`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withHvnId':: d.fn(help='`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withMajorVersionUpgradeConfig':: d.fn(help='`hcp.list[obj].withMajorVersionUpgradeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the major_version_upgrade_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withMajorVersionUpgradeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `major_version_upgrade_config` field.\n', args=[]),
  withMajorVersionUpgradeConfig(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          major_version_upgrade_config: value,
        },
      },
    },
  },
  '#withMajorVersionUpgradeConfigMixin':: d.fn(help='`hcp.list[obj].withMajorVersionUpgradeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the major_version_upgrade_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withMajorVersionUpgradeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `major_version_upgrade_config` field.\n', args=[]),
  withMajorVersionUpgradeConfigMixin(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          major_version_upgrade_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMetricsConfig':: d.fn(help='`hcp.list[obj].withMetricsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metrics_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withMetricsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metrics_config` field.\n', args=[]),
  withMetricsConfig(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          metrics_config: value,
        },
      },
    },
  },
  '#withMetricsConfigMixin':: d.fn(help='`hcp.list[obj].withMetricsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the metrics_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withMetricsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `metrics_config` field.\n', args=[]),
  withMetricsConfigMixin(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          metrics_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMinVaultVersion':: d.fn(help='`hcp.string.withMinVaultVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the min_vault_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `min_vault_version` field.\n', args=[]),
  withMinVaultVersion(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          min_vault_version: value,
        },
      },
    },
  },
  '#withPathsFilter':: d.fn(help='`hcp.list.withPathsFilter` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the paths_filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `paths_filter` field.\n', args=[]),
  withPathsFilter(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          paths_filter: value,
        },
      },
    },
  },
  '#withPrimaryLink':: d.fn(help='`hcp.string.withPrimaryLink` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the primary_link field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `primary_link` field.\n', args=[]),
  withPrimaryLink(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          primary_link: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withPublicEndpoint':: d.fn(help='`hcp.bool.withPublicEndpoint` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the public_endpoint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `public_endpoint` field.\n', args=[]),
  withPublicEndpoint(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          public_endpoint: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`hcp.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
