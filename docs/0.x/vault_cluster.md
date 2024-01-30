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
* [`fn withIpAllowlist()`](#fn-withipallowlist)
* [`fn withIpAllowlistMixin()`](#fn-withipallowlistmixin)
* [`fn withMajorVersionUpgradeConfig()`](#fn-withmajorversionupgradeconfig)
* [`fn withMajorVersionUpgradeConfigMixin()`](#fn-withmajorversionupgradeconfigmixin)
* [`fn withMetricsConfig()`](#fn-withmetricsconfig)
* [`fn withMetricsConfigMixin()`](#fn-withmetricsconfigmixin)
* [`fn withMinVaultVersion()`](#fn-withminvaultversion)
* [`fn withPathsFilter()`](#fn-withpathsfilter)
* [`fn withPrimaryLink()`](#fn-withprimarylink)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withProxyEndpoint()`](#fn-withproxyendpoint)
* [`fn withPublicEndpoint()`](#fn-withpublicendpoint)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj audit_log_config`](#obj-audit_log_config)
  * [`fn new()`](#fn-audit_log_confignew)
* [`obj ip_allowlist`](#obj-ip_allowlist)
  * [`fn new()`](#fn-ip_allowlistnew)
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
  - `project_id` (`string`): 
The ID of the HCP project where the Vault cluster is located.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `proxy_endpoint` (`string`): Denotes that the cluster has a proxy endpoint. Valid options are `ENABLED`, `DISABLED`. Defaults to `DISABLED`. When `null`, the `proxy_endpoint` field will be omitted from the resulting object.
  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.
  - `tier` (`string`): Tier of the HCP Vault cluster. Valid options for tiers - `dev`, `starter_small`, `standard_small`, `standard_medium`, `standard_large`, `plus_small`, `plus_medium`, `plus_large`. See [pricing information](https://www.hashicorp.com/products/vault/pricing). Changing a cluster&#39;s size or tier is only available to admins. See [Scale a cluster](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/vault-scaling). When `null`, the `tier` field will be omitted from the resulting object.
  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.audit_log_config.new](#fn-audit_log_confignew) constructor.
  - `ip_allowlist` (`list[obj]`): Allowed IPV4 address ranges (CIDRs) for inbound traffic. Each entry must be a unique CIDR. Maximum 50 CIDRS supported at this time. When `null`, the `ip_allowlist` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.ip_allowlist.new](#fn-ip_allowlistnew) constructor.
  - `major_version_upgrade_config` (`list[obj]`): The Major Version Upgrade configuration. When `null`, the `major_version_upgrade_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.major_version_upgrade_config.new](#fn-major_version_upgrade_confignew) constructor.
  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.metrics_config.new](#fn-metrics_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.vault_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `vault_cluster`
Terraform resource.

Unlike [hcp.vault_cluster.new](#fn-new), this function will not inject the `resource`
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
  - `project_id` (`string`): 
The ID of the HCP project where the Vault cluster is located.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `proxy_endpoint` (`string`): Denotes that the cluster has a proxy endpoint. Valid options are `ENABLED`, `DISABLED`. Defaults to `DISABLED`. When `null`, the `proxy_endpoint` field will be omitted from the resulting object.
  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.
  - `tier` (`string`): Tier of the HCP Vault cluster. Valid options for tiers - `dev`, `starter_small`, `standard_small`, `standard_medium`, `standard_large`, `plus_small`, `plus_medium`, `plus_large`. See [pricing information](https://www.hashicorp.com/products/vault/pricing). Changing a cluster&#39;s size or tier is only available to admins. See [Scale a cluster](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/vault-scaling). When `null`, the `tier` field will be omitted from the resulting object.
  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.audit_log_config.new](#fn-audit_log_confignew) constructor.
  - `ip_allowlist` (`list[obj]`): Allowed IPV4 address ranges (CIDRs) for inbound traffic. Each entry must be a unique CIDR. Maximum 50 CIDRS supported at this time. When `null`, the `ip_allowlist` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.ip_allowlist.new](#fn-ip_allowlistnew) constructor.
  - `major_version_upgrade_config` (`list[obj]`): The Major Version Upgrade configuration. When `null`, the `major_version_upgrade_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.major_version_upgrade_config.new](#fn-major_version_upgrade_confignew) constructor.
  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.metrics_config.new](#fn-metrics_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.vault_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vault_cluster` resource into the root Terraform configuration.


### fn withAuditLogConfig

```ts
withAuditLogConfig()
```

`hcp.list[obj].withAuditLogConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the audit_log_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withAuditLogConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.


### fn withAuditLogConfigMixin

```ts
withAuditLogConfigMixin()
```

`hcp.list[obj].withAuditLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the audit_log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withAuditLogConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.


### fn withClusterId

```ts
withClusterId()
```

`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withHvnId

```ts
withHvnId()
```

`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_id` field.


### fn withIpAllowlist

```ts
withIpAllowlist()
```

`hcp.list[obj].withIpAllowlist` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ip_allowlist field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withIpAllowlistMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ip_allowlist` field.


### fn withIpAllowlistMixin

```ts
withIpAllowlistMixin()
```

`hcp.list[obj].withIpAllowlistMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ip_allowlist field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withIpAllowlist](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ip_allowlist` field.


### fn withMajorVersionUpgradeConfig

```ts
withMajorVersionUpgradeConfig()
```

`hcp.list[obj].withMajorVersionUpgradeConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the major_version_upgrade_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withMajorVersionUpgradeConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `major_version_upgrade_config` field.


### fn withMajorVersionUpgradeConfigMixin

```ts
withMajorVersionUpgradeConfigMixin()
```

`hcp.list[obj].withMajorVersionUpgradeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the major_version_upgrade_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withMajorVersionUpgradeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `major_version_upgrade_config` field.


### fn withMetricsConfig

```ts
withMetricsConfig()
```

`hcp.list[obj].withMetricsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metrics_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withMetricsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metrics_config` field.


### fn withMetricsConfigMixin

```ts
withMetricsConfigMixin()
```

`hcp.list[obj].withMetricsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the metrics_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withMetricsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metrics_config` field.


### fn withMinVaultVersion

```ts
withMinVaultVersion()
```

`hcp.string.withMinVaultVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the min_vault_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `min_vault_version` field.


### fn withPathsFilter

```ts
withPathsFilter()
```

`hcp.list.withPathsFilter` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the paths_filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `paths_filter` field.


### fn withPrimaryLink

```ts
withPrimaryLink()
```

`hcp.string.withPrimaryLink` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the primary_link field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `primary_link` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withProxyEndpoint

```ts
withProxyEndpoint()
```

`hcp.string.withProxyEndpoint` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the proxy_endpoint field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `proxy_endpoint` field.


### fn withPublicEndpoint

```ts
withPublicEndpoint()
```

`hcp.bool.withPublicEndpoint` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the public_endpoint field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `public_endpoint` field.


### fn withTier

```ts
withTier()
```

`hcp.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj audit_log_config



### fn audit_log_config.new

```ts
new()
```


`hcp.vault_cluster.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`
Terraform sub block.



**Args**:
  - `cloudwatch_access_key_id` (`string`): CloudWatch access key ID for streaming audit logs When `null`, the `cloudwatch_access_key_id` field will be omitted from the resulting object.
  - `cloudwatch_region` (`string`): CloudWatch region for streaming audit logs When `null`, the `cloudwatch_region` field will be omitted from the resulting object.
  - `cloudwatch_secret_access_key` (`string`): CloudWatch secret access key for streaming audit logs When `null`, the `cloudwatch_secret_access_key` field will be omitted from the resulting object.
  - `datadog_api_key` (`string`): Datadog api key for streaming audit logs When `null`, the `datadog_api_key` field will be omitted from the resulting object.
  - `datadog_region` (`string`): Datadog region for streaming audit logs When `null`, the `datadog_region` field will be omitted from the resulting object.
  - `elasticsearch_endpoint` (`string`): ElasticSearch endpoint for streaming audit logs When `null`, the `elasticsearch_endpoint` field will be omitted from the resulting object.
  - `elasticsearch_password` (`string`): ElasticSearch password for streaming audit logs When `null`, the `elasticsearch_password` field will be omitted from the resulting object.
  - `elasticsearch_user` (`string`): ElasticSearch user for streaming audit logs When `null`, the `elasticsearch_user` field will be omitted from the resulting object.
  - `grafana_endpoint` (`string`): Grafana endpoint for streaming audit logs When `null`, the `grafana_endpoint` field will be omitted from the resulting object.
  - `grafana_password` (`string`): Grafana password for streaming audit logs When `null`, the `grafana_password` field will be omitted from the resulting object.
  - `grafana_user` (`string`): Grafana user for streaming audit logs When `null`, the `grafana_user` field will be omitted from the resulting object.
  - `http_basic_password` (`string`): HTTP basic authentication password for streaming audit logs, one of the two available authentication methods, can be specified only if http_basic_user is also provided When `null`, the `http_basic_password` field will be omitted from the resulting object.
  - `http_basic_user` (`string`): HTTP basic authentication username for streaming audit logs, one of the two available authentication methods, can be specified only if http_basic_password is also provided When `null`, the `http_basic_user` field will be omitted from the resulting object.
  - `http_bearer_token` (`string`): HTTP bearer authentication token for streaming audit logs, one of the two available authentication methods, can be specified only if http_basic_user and http_basic_password are not provided When `null`, the `http_bearer_token` field will be omitted from the resulting object.
  - `http_codec` (`string`): HTTP codec for streaming audit logs, allowed values are JSON and NDJSON When `null`, the `http_codec` field will be omitted from the resulting object.
  - `http_compression` (`bool`): HTTP compression flag for streaming audit logs When `null`, the `http_compression` field will be omitted from the resulting object.
  - `http_headers` (`obj`): HTTP headers for streaming audit logs When `null`, the `http_headers` field will be omitted from the resulting object.
  - `http_method` (`string`): HTTP payload method for streaming audit logs, , allowed values are PATCH, POST, or PUT When `null`, the `http_method` field will be omitted from the resulting object.
  - `http_payload_prefix` (`string`): HTTP payload prefix for streaming audit logs When `null`, the `http_payload_prefix` field will be omitted from the resulting object.
  - `http_payload_suffix` (`string`): HTTP payload suffix for streaming audit logs When `null`, the `http_payload_suffix` field will be omitted from the resulting object.
  - `http_uri` (`string`): HTTP URI for streaming audit logs When `null`, the `http_uri` field will be omitted from the resulting object.
  - `newrelic_account_id` (`string`): NewRelic Account ID for streaming audit logs When `null`, the `newrelic_account_id` field will be omitted from the resulting object.
  - `newrelic_license_key` (`string`): NewRelic license key for streaming audit logs When `null`, the `newrelic_license_key` field will be omitted from the resulting object.
  - `newrelic_region` (`string`): NewRelic region for streaming audit logs, allowed values are &#34;US&#34; and &#34;EU&#34; When `null`, the `newrelic_region` field will be omitted from the resulting object.
  - `splunk_hecendpoint` (`string`): Splunk endpoint for streaming audit logs When `null`, the `splunk_hecendpoint` field will be omitted from the resulting object.
  - `splunk_token` (`string`): Splunk token for streaming audit logs When `null`, the `splunk_token` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `audit_log_config` sub block.


## obj ip_allowlist



### fn ip_allowlist.new

```ts
new()
```


`hcp.vault_cluster.ip_allowlist.new` constructs a new object with attributes and blocks configured for the `ip_allowlist`
Terraform sub block.



**Args**:
  - `address` (`string`): IP address range in CIDR notation.
  - `description` (`string`): Description to help identify source (maximum 255 chars). When `null`, the `description` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ip_allowlist` sub block.


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
  - `cloudwatch_access_key_id` (`string`): CloudWatch access key ID for streaming metrics When `null`, the `cloudwatch_access_key_id` field will be omitted from the resulting object.
  - `cloudwatch_region` (`string`): CloudWatch region for streaming metrics When `null`, the `cloudwatch_region` field will be omitted from the resulting object.
  - `cloudwatch_secret_access_key` (`string`): CloudWatch secret access key for streaming metrics When `null`, the `cloudwatch_secret_access_key` field will be omitted from the resulting object.
  - `datadog_api_key` (`string`): Datadog api key for streaming metrics When `null`, the `datadog_api_key` field will be omitted from the resulting object.
  - `datadog_region` (`string`): Datadog region for streaming metrics When `null`, the `datadog_region` field will be omitted from the resulting object.
  - `elasticsearch_endpoint` (`string`): ElasticSearch endpoint for streaming metrics When `null`, the `elasticsearch_endpoint` field will be omitted from the resulting object.
  - `elasticsearch_password` (`string`): ElasticSearch password for streaming metrics When `null`, the `elasticsearch_password` field will be omitted from the resulting object.
  - `elasticsearch_user` (`string`): ElasticSearch user for streaming metrics When `null`, the `elasticsearch_user` field will be omitted from the resulting object.
  - `grafana_endpoint` (`string`): Grafana endpoint for streaming metrics When `null`, the `grafana_endpoint` field will be omitted from the resulting object.
  - `grafana_password` (`string`): Grafana password for streaming metrics When `null`, the `grafana_password` field will be omitted from the resulting object.
  - `grafana_user` (`string`): Grafana user for streaming metrics When `null`, the `grafana_user` field will be omitted from the resulting object.
  - `http_basic_password` (`string`): HTTP basic authentication password for streaming metrics, one of the two available authentication methods, can be specified only if http_basic_user is also specified When `null`, the `http_basic_password` field will be omitted from the resulting object.
  - `http_basic_user` (`string`): HTTP basic authentication username for streaming metrics, one of the two available authentication methods, can be specified only if http_basic_password is also specified When `null`, the `http_basic_user` field will be omitted from the resulting object.
  - `http_bearer_token` (`string`): HTTP bearer authentication token for streaming metrics, one of the two available authentication methods, can be specified only if http_basic_user and http_basic_password are not provided When `null`, the `http_bearer_token` field will be omitted from the resulting object.
  - `http_codec` (`string`): HTTP codec for streaming metrics, allowed values are JSON and NDJSON When `null`, the `http_codec` field will be omitted from the resulting object.
  - `http_compression` (`bool`): HTTP compression flag for streaming metrics When `null`, the `http_compression` field will be omitted from the resulting object.
  - `http_headers` (`obj`): HTTP headers for streaming metrics When `null`, the `http_headers` field will be omitted from the resulting object.
  - `http_method` (`string`): HTTP payload method for streaming metrics, allowed values are PATCH, POST, or PUT When `null`, the `http_method` field will be omitted from the resulting object.
  - `http_payload_prefix` (`string`): HTTP payload prefix for streaming metrics When `null`, the `http_payload_prefix` field will be omitted from the resulting object.
  - `http_payload_suffix` (`string`): HTTP payload suffix for streaming metrics When `null`, the `http_payload_suffix` field will be omitted from the resulting object.
  - `http_uri` (`string`): HTTP URI for streaming metrics When `null`, the `http_uri` field will be omitted from the resulting object.
  - `newrelic_account_id` (`string`): NewRelic Account ID for streaming metrics When `null`, the `newrelic_account_id` field will be omitted from the resulting object.
  - `newrelic_license_key` (`string`): NewRelic license key for streaming metrics When `null`, the `newrelic_license_key` field will be omitted from the resulting object.
  - `newrelic_region` (`string`): NewRelic region for streaming metrics, allowed values are &#34;US&#34; and &#34;EU&#34; When `null`, the `newrelic_region` field will be omitted from the resulting object.
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
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
