---
permalink: /service_principal/
---

# service_principal

`service_principal` represents the `hcp_service_principal` Terraform resource.

The service principal resource manages a HCP Service Principal.

The user or service account that is running Terraform when creating a `hcp_service_principal` resource must have `roles/Admin` on the parent resource; either the project or organization.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withName()`](#fn-withname)
* [`fn withParent()`](#fn-withparent)

## Fields

### fn new

```ts
new()
```


`hcp.service_principal.new` injects a new `hcp_service_principal` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.service_principal.new('some_id')

You can get the reference to the `id` field of the created `hcp.service_principal` using the reference:

    $._ref.hcp_service_principal.some_id.get('id')

This is the same as directly entering `"${ hcp_service_principal.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `name` (`string`): The service principal&#39;s name.
  - `parent` (`string`): The parent location to create the service principal under. If unspecified, the service principal will be created in the project the provider is configured with. If specified, the accepted values are &#34;project/&lt;project_id&gt;&#34; or &#34;organization/&lt;organization_id&gt;&#34; When `null`, the `parent` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.service_principal.newAttrs` constructs a new object with attributes and blocks configured for the `service_principal`
Terraform resource.

Unlike [hcp.service_principal.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `name` (`string`): The service principal&#39;s name.
  - `parent` (`string`): The parent location to create the service principal under. If unspecified, the service principal will be created in the project the provider is configured with. If specified, the accepted values are &#34;project/&lt;project_id&gt;&#34; or &#34;organization/&lt;organization_id&gt;&#34; When `null`, the `parent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_principal` resource into the root Terraform configuration.


### fn withName

```ts
withName()
```

`hcp.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withParent

```ts
withParent()
```

`hcp.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.
