---
permalink: /hvn/
---

# hvn

`hvn` represents the `hcp_hvn` Terraform resource.

The HVN resource allows you to manage a HashiCorp Virtual Network in HCP.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCidrBlock()`](#fn-withcidrblock)
* [`fn withCloudProvider()`](#fn-withcloudprovider)
* [`fn withHvnId()`](#fn-withhvnid)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.hvn.new` injects a new `hcp_hvn` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.hvn.new('some_id')

You can get the reference to the `id` field of the created `hcp.hvn` using the reference:

    $._ref.hcp_hvn.some_id.get('id')

This is the same as directly entering `"${ hcp_hvn.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cidr_block` (`string`): The CIDR range of the HVN. If this is not provided, the service will provide a default value. When `null`, the `cidr_block` field will be omitted from the resulting object.
  - `cloud_provider` (`string`): The provider where the HVN is located. The provider &#39;aws&#39; is generally available and &#39;azure&#39; is in public beta.
  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).
  - `project_id` (`string`): 
The ID of the HCP project where the HVN is located.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `region` (`string`): The region where the HVN is located.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.hvn.newAttrs` constructs a new object with attributes and blocks configured for the `hvn`
Terraform resource.

Unlike [hcp.hvn.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cidr_block` (`string`): The CIDR range of the HVN. If this is not provided, the service will provide a default value. When `null`, the `cidr_block` field will be omitted from the resulting object.
  - `cloud_provider` (`string`): The provider where the HVN is located. The provider &#39;aws&#39; is generally available and &#39;azure&#39; is in public beta.
  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).
  - `project_id` (`string`): 
The ID of the HCP project where the HVN is located.
If not specified, the project specified in the HCP Provider config block will be used, if configured.
If a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `region` (`string`): The region where the HVN is located.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `hvn` resource into the root Terraform configuration.


### fn withCidrBlock

```ts
withCidrBlock()
```

`hcp.string.withCidrBlock` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cidr_block field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cidr_block` field.


### fn withCloudProvider

```ts
withCloudProvider()
```

`hcp.string.withCloudProvider` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cloud_provider field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cloud_provider` field.


### fn withHvnId

```ts
withHvnId()
```

`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hvn_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hvn_id` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withRegion

```ts
withRegion()
```

`hcp.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.hvn.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
