---
permalink: /boundary_cluster/
---

# boundary_cluster

`boundary_cluster` represents the `hcp_boundary_cluster` Terraform resource.

This resource allows you to manage an HCP Boundary cluster

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withMaintenanceWindowConfig()`](#fn-withmaintenancewindowconfig)
* [`fn withMaintenanceWindowConfigMixin()`](#fn-withmaintenancewindowconfigmixin)
* [`fn withPassword()`](#fn-withpassword)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUsername()`](#fn-withusername)
* [`obj maintenance_window_config`](#obj-maintenance_window_config)
  * [`fn new()`](#fn-maintenance_window_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.boundary_cluster.new` injects a new `hcp_boundary_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.boundary_cluster.new('some_id')

You can get the reference to the `id` field of the created `hcp.boundary_cluster` using the reference:

    $._ref.hcp_boundary_cluster.some_id.get('id')

This is the same as directly entering `"${ hcp_boundary_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): The ID of the Boundary cluster
  - `password` (`string`): The password of the initial admin user. This must be at least 8 characters in length. Note that this may show up in logs, and it will be stored in the state file.
  - `project_id` (`string`): 
The ID of the HCP project where the Boundary cluster is located.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `tier` (`string`): The tier that the HCP Boundary cluster will be provisioned as, &#39;Standard&#39; or &#39;Plus&#39;.
  - `username` (`string`): The username of the initial admin user. This must be at least 3 characters in length, alphanumeric, hyphen, or period.
  - `maintenance_window_config` (`list[obj]`): The maintenance window configuration for when cluster upgrades can take place. When `null`, the `maintenance_window_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.maintenance_window_config.new](#fn-maintenance_window_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.boundary_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `boundary_cluster`
Terraform resource.

Unlike [hcp.boundary_cluster.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): The ID of the Boundary cluster
  - `password` (`string`): The password of the initial admin user. This must be at least 8 characters in length. Note that this may show up in logs, and it will be stored in the state file.
  - `project_id` (`string`): 
The ID of the HCP project where the Boundary cluster is located.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `tier` (`string`): The tier that the HCP Boundary cluster will be provisioned as, &#39;Standard&#39; or &#39;Plus&#39;.
  - `username` (`string`): The username of the initial admin user. This must be at least 3 characters in length, alphanumeric, hyphen, or period.
  - `maintenance_window_config` (`list[obj]`): The maintenance window configuration for when cluster upgrades can take place. When `null`, the `maintenance_window_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.maintenance_window_config.new](#fn-maintenance_window_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `boundary_cluster` resource into the root Terraform configuration.


### fn withClusterId

```ts
withClusterId()
```

`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withMaintenanceWindowConfig

```ts
withMaintenanceWindowConfig()
```

`hcp.list[obj].withMaintenanceWindowConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [hcp.list[obj].withMaintenanceWindowConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window_config` field.


### fn withMaintenanceWindowConfigMixin

```ts
withMaintenanceWindowConfigMixin()
```

`hcp.list[obj].withMaintenanceWindowConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withMaintenanceWindowConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window_config` field.


### fn withPassword

```ts
withPassword()
```

`hcp.string.withPassword` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the password field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `password` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


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


### fn withUsername

```ts
withUsername()
```

`hcp.string.withUsername` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the username field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `username` field.


## obj maintenance_window_config



### fn maintenance_window_config.new

```ts
new()
```


`hcp.boundary_cluster.maintenance_window_config.new` constructs a new object with attributes and blocks configured for the `maintenance_window_config`
Terraform sub block.



**Args**:
  - `day` (`string`): The maintenance day of the week for scheduled upgrades. Valid options for maintenance window day - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY` When `null`, the `day` field will be omitted from the resulting object.
  - `end` (`number`): The end time which upgrades can be performed. Uses 24H clock and must be in UTC time zone. Valid options include - 1 to 24 (inclusive) When `null`, the `end` field will be omitted from the resulting object.
  - `start` (`number`): The start time which upgrades can be performed. Uses 24H clock and must be in UTC time zone. Valid options include - 0 to 23 (inclusive) When `null`, the `start` field will be omitted from the resulting object.
  - `upgrade_type` (`string`): The upgrade type for the cluster. Valid options for upgrade type - `AUTOMATIC`, `SCHEDULED` When `null`, the `upgrade_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `maintenance_window_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.boundary_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
