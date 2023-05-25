---
permalink: /data/vault_cluster/
---

# data.vault_cluster

`vault_cluster` represents the `hcp_vault_cluster` Terraform data source.

The cluster data source provides information about an existing HCP Vault cluster.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuditLogConfig()`](#fn-withauditlogconfig)
* [`fn withAuditLogConfigMixin()`](#fn-withauditlogconfigmixin)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withMetricsConfig()`](#fn-withmetricsconfig)
* [`fn withMetricsConfigMixin()`](#fn-withmetricsconfigmixin)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj audit_log_config`](#obj-audit_log_config)
  * [`fn new()`](#fn-audit_log_confignew)
* [`obj metrics_config`](#obj-metrics_config)
  * [`fn new()`](#fn-metrics_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.data.vault_cluster.new` injects a new `data_hcp_vault_cluster` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.vault_cluster.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.vault_cluster` using the reference:

    $._ref.data_hcp_vault_cluster.some_id.get('id')

This is the same as directly entering `"${ data_hcp_vault_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): The ID of the HCP Vault cluster.
  - `project_id` (`string`): The ID of the HCP project where the Vault cluster is located. When `null`, the `project_id` field will be omitted from the resulting object.
  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.audit_log_config.new](#fn-audit_log_confignew) constructor.
  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.metrics_config.new](#fn-metrics_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting data source block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.vault_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `vault_cluster`
Terraform data source.

Unlike [hcp.data.vault_cluster.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): The ID of the HCP Vault cluster.
  - `project_id` (`string`): The ID of the HCP project where the Vault cluster is located. When `null`, the `project_id` field will be omitted from the resulting object.
  - `audit_log_config` (`list[obj]`): The audit logs configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.audit_log_config.new](#fn-audit_log_confignew) constructor.
  - `metrics_config` (`list[obj]`): The metrics configuration for export. (https://developer.hashicorp.com/vault/tutorials/cloud-monitoring/vault-metrics-guide#metrics-streaming-configuration) When `null`, the `metrics_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.metrics_config.new](#fn-metrics_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.vault_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vault_cluster` data source into the root Terraform configuration.


### fn withAuditLogConfig

```ts
withAuditLogConfig()
```

`hcp.list[obj].withAuditLogConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the audit_log_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withAuditLogConfigMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.


### fn withAuditLogConfigMixin

```ts
withAuditLogConfigMixin()
```

`hcp.list[obj].withAuditLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the audit_log_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withAuditLogConfig](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.


### fn withClusterId

```ts
withClusterId()
```

`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the cluster_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withMetricsConfig

```ts
withMetricsConfig()
```

`hcp.list[obj].withMetricsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the metrics_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withMetricsConfigMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metrics_config` field.


### fn withMetricsConfigMixin

```ts
withMetricsConfigMixin()
```

`hcp.list[obj].withMetricsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the metrics_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withMetricsConfig](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `metrics_config` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform data source block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj audit_log_config



### fn audit_log_config.new

```ts
new()
```


`hcp.vault_cluster.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `audit_log_config` sub block.


## obj metrics_config



### fn metrics_config.new

```ts
new()
```


`hcp.vault_cluster.metrics_config.new` constructs a new object with attributes and blocks configured for the `metrics_config`
Terraform sub block.



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
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
