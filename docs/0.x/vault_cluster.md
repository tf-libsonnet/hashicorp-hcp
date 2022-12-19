---
permalink: /vault_cluster/
---

# vault_cluster

`vault_cluster` represents the `hcp_vault_cluster` Terraform resource.

The Vault cluster resource allows you to manage an HCP Vault cluster.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuditLogConfig()`](#fn-withauditlogconfig)
* [`fn withAuditLogConfigMixin()`](#fn-withauditlogconfigmixin)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withHvnId()`](#fn-withhvnid)
* [`fn withMajorVersionUpgradeConfig()`](#fn-withmajorversionupgradeconfig)
* [`fn withMajorVersionUpgradeConfigMixin()`](#fn-withmajorversionupgradeconfigmixin)
* [`fn withMetricsConfig()`](#fn-withmetricsconfig)
* [`fn withMetricsConfigMixin()`](#fn-withmetricsconfigmixin)
* [`fn withMinVaultVersion()`](#fn-withminvaultversion)
* [`fn withPathsFilter()`](#fn-withpathsfilter)
* [`fn withPrimaryLink()`](#fn-withprimarylink)
* [`fn withPublicEndpoint()`](#fn-withpublicendpoint)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj audit_log_config`](#obj-audit_log_config)
  * [`fn new()`](#fn-audit_log_confignew)
* [`obj major_version_upgrade_config`](#obj-major_version_upgrade_config)
  * [`fn new()`](#fn-major_version_upgrade_confignew)
* [`obj metrics_config`](#obj-metrics_config)
  * [`fn new()`](#fn-metrics_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.vault_cluster.new` injects a new `hcp_vault_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.vault_cluster.new('some_id')

You can get the reference to the `id` field of the created `hcp.vault_cluster` using the reference:

    $._ref.hcp_vault_cluster.some_id.get('id')

This is the same as directly entering `"${ hcp_vault_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): The ID of the HCP Vault cluster.
  - `hvn_id` (`string`): The ID of the HVN this HCP Vault cluster is associated to.
  - `min_vault_version` (`string`): The minimum Vault version to use when creating the cluster. If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_vault_version` field will be omitted from the resulting object.
  - `paths_filter` (`list`): The performance replication [paths filter](https://developer.hashicorp.com/vault/tutorials/cloud-ops/vault-replication-terraform). Applies to performance replication secondaries only and operates in &#34;deny&#34; mode only. When `null`, the `paths_filter` field will be omitted from the resulting object.
  - `primary_link` (`string`): The `self_link` of the HCP Vault Plus tier cluster which is the primary in the performance replication setup with this HCP Vault Plus tier cluster. If not specified, it is a standalone Plus tier HCP Vault cluster. When `null`, the `primary_link` field will be omitted from the resulting object.
  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.
  - `tier` (`string`): Tier of the HCP Vault cluster. Valid options for tiers - `dev`, `starter_small`, `standard_small`, `standard_medium`, `standard_large`, `plus_small`, `plus_medium`, `plus_large`. See [pricing information](https://cloud.hashicorp.com/pricing/vault). Changing a cluster&#39;s size or tier is only available to admins. See [Scale a cluster](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/vault-scaling). When `null`, the `tier` field will be omitted from the resulting object.
  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.audit_log_config.new](#fn-vaultclusterauditlogconfignew) constructor.
  - `major_version_upgrade_config` (`list[obj]`): The Major Version Upgrade configuration. When `null`, the `major_version_upgrade_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.major_version_upgrade_config.new](#fn-vaultclustermajorversionupgradeconfignew) constructor.
  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.metrics_config.new](#fn-vaultclustermetricsconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.timeouts.new](#fn-vaultclustertimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.vault_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `vault_cluster`
Terraform resource.

Unlike [hcp.vault_cluster.new](#fn-vaultclusternew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): The ID of the HCP Vault cluster.
  - `hvn_id` (`string`): The ID of the HVN this HCP Vault cluster is associated to.
  - `min_vault_version` (`string`): The minimum Vault version to use when creating the cluster. If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_vault_version` field will be omitted from the resulting object.
  - `paths_filter` (`list`): The performance replication [paths filter](https://developer.hashicorp.com/vault/tutorials/cloud-ops/vault-replication-terraform). Applies to performance replication secondaries only and operates in &#34;deny&#34; mode only. When `null`, the `paths_filter` field will be omitted from the resulting object.
  - `primary_link` (`string`): The `self_link` of the HCP Vault Plus tier cluster which is the primary in the performance replication setup with this HCP Vault Plus tier cluster. If not specified, it is a standalone Plus tier HCP Vault cluster. When `null`, the `primary_link` field will be omitted from the resulting object.
  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.
  - `tier` (`string`): Tier of the HCP Vault cluster. Valid options for tiers - `dev`, `starter_small`, `standard_small`, `standard_medium`, `standard_large`, `plus_small`, `plus_medium`, `plus_large`. See [pricing information](https://cloud.hashicorp.com/pricing/vault). Changing a cluster&#39;s size or tier is only available to admins. See [Scale a cluster](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/vault-scaling). When `null`, the `tier` field will be omitted from the resulting object.
  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.audit_log_config.new](#fn-vaultclusterauditlogconfignew) constructor.
  - `major_version_upgrade_config` (`list[obj]`): The Major Version Upgrade configuration. When `null`, the `major_version_upgrade_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.major_version_upgrade_config.new](#fn-vaultclustermajorversionupgradeconfignew) constructor.
  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.metrics_config.new](#fn-vaultclustermetricsconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.timeouts.new](#fn-vaultclustertimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vault_cluster` resource into the root Terraform configuration.


### fn withAuditLogConfig

```ts
withAuditLogConfig()
```

`hcp.vault_cluster.withAuditLogConfig` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the audit_log_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `audit_log_config` field.


### fn withAuditLogConfigMixin

```ts
withAuditLogConfigMixin()
```

`hcp.vault_cluster.withAuditLogConfigMixin` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the audit_log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.vault_cluster.withAuditLogConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `audit_log_config` field.


### fn withClusterId

```ts
withClusterId()
```

`hcp.vault_cluster.withClusterId` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cluster_id` field.


### fn withHvnId

```ts
withHvnId()
```

`hcp.vault_cluster.withHvnId` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the hvn_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `hvn_id` field.


### fn withMajorVersionUpgradeConfig

```ts
withMajorVersionUpgradeConfig()
```

`hcp.vault_cluster.withMajorVersionUpgradeConfig` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the major_version_upgrade_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `major_version_upgrade_config` field.


### fn withMajorVersionUpgradeConfigMixin

```ts
withMajorVersionUpgradeConfigMixin()
```

`hcp.vault_cluster.withMajorVersionUpgradeConfigMixin` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the major_version_upgrade_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.vault_cluster.withMajorVersionUpgradeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `major_version_upgrade_config` field.


### fn withMetricsConfig

```ts
withMetricsConfig()
```

`hcp.vault_cluster.withMetricsConfig` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the metrics_config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `metrics_config` field.


### fn withMetricsConfigMixin

```ts
withMetricsConfigMixin()
```

`hcp.vault_cluster.withMetricsConfigMixin` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the metrics_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.vault_cluster.withMetricsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `metrics_config` field.


### fn withMinVaultVersion

```ts
withMinVaultVersion()
```

`hcp.vault_cluster.withMinVaultVersion` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the min_vault_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `min_vault_version` field.


### fn withPathsFilter

```ts
withPathsFilter()
```

`hcp.vault_cluster.withPathsFilter` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the paths_filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `paths_filter` field.


### fn withPrimaryLink

```ts
withPrimaryLink()
```

`hcp.vault_cluster.withPrimaryLink` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the primary_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `primary_link` field.


### fn withPublicEndpoint

```ts
withPublicEndpoint()
```

`hcp.vault_cluster.withPublicEndpoint` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the public_endpoint field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `public_endpoint` field.


### fn withTier

```ts
withTier()
```

`hcp.vault_cluster.withTier` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `tier` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.vault_cluster.withTimeouts` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.vault_cluster.withTimeoutsMixin` constructs a mixin object that can be merged into the `vault_cluster`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.vault_cluster.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj audit_log_config



### fn audit_log_config.new

```ts
new()
```


`hcp.vault_cluster.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`
Terraform sub block.



**Args**:
  - `datadog_api_key` (`string`): Datadog api key for streaming audit logs When `null`, the `datadog_api_key` field will be omitted from the resulting object.
  - `datadog_region` (`string`): Datadog region for streaming audit logs When `null`, the `datadog_region` field will be omitted from the resulting object.
  - `grafana_endpoint` (`string`): Grafana endpoint for streaming audit logs When `null`, the `grafana_endpoint` field will be omitted from the resulting object.
  - `grafana_password` (`string`): Grafana password for streaming audit logs When `null`, the `grafana_password` field will be omitted from the resulting object.
  - `grafana_user` (`string`): Grafana user for streaming audit logs When `null`, the `grafana_user` field will be omitted from the resulting object.
  - `splunk_hecendpoint` (`string`): Splunk endpoint for streaming audit logs When `null`, the `splunk_hecendpoint` field will be omitted from the resulting object.
  - `splunk_token` (`string`): Splunk token for streaming audit logs When `null`, the `splunk_token` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `audit_log_config` sub block.


## obj major_version_upgrade_config



### fn major_version_upgrade_config.new

```ts
new()
```


`hcp.vault_cluster.major_version_upgrade_config.new` constructs a new object with attributes and blocks configured for the `major_version_upgrade_config`
Terraform sub block.



**Args**:
  - `maintenance_window_day` (`string`): The maintenance day of the week for scheduled upgrades. Valid options for maintenance window day - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY` When `null`, the `maintenance_window_day` field will be omitted from the resulting object.
  - `maintenance_window_time` (`string`): The maintenance time frame for scheduled upgrades. Valid options for maintenance window time - `WINDOW_12AM_4AM`, `WINDOW_6AM_10AM`, `WINDOW_12PM_4PM`, `WINDOW_6PM_10PM` When `null`, the `maintenance_window_time` field will be omitted from the resulting object.
  - `upgrade_type` (`string`): The major upgrade type for the cluster. Valid options for upgrade type - `AUTOMATIC`, `SCHEDULED`, `MANUAL`

**Returns**:
  - An attribute object that represents the `major_version_upgrade_config` sub block.


## obj metrics_config



### fn metrics_config.new

```ts
new()
```


`hcp.vault_cluster.metrics_config.new` constructs a new object with attributes and blocks configured for the `metrics_config`
Terraform sub block.



**Args**:
  - `datadog_api_key` (`string`): Datadog api key for streaming metrics When `null`, the `datadog_api_key` field will be omitted from the resulting object.
  - `datadog_region` (`string`): Datadog region for streaming metrics When `null`, the `datadog_region` field will be omitted from the resulting object.
  - `grafana_endpoint` (`string`): Grafana endpoint for streaming metrics When `null`, the `grafana_endpoint` field will be omitted from the resulting object.
  - `grafana_password` (`string`): Grafana password for streaming metrics When `null`, the `grafana_password` field will be omitted from the resulting object.
  - `grafana_user` (`string`): Grafana user for streaming metrics When `null`, the `grafana_user` field will be omitted from the resulting object.
  - `splunk_hecendpoint` (`string`): Splunk endpoint for streaming metrics When `null`, the `splunk_hecendpoint` field will be omitted from the resulting object.
  - `splunk_token` (`string`): Splunk token for streaming metrics When `null`, the `splunk_token` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `metrics_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.vault_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
