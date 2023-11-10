---
permalink: /service_principal_key/
---

# service_principal_key

`service_principal_key` represents the `hcp_service_principal_key` Terraform resource.

The service principal key resource manages a service principal key.

The user or service account that is running Terraform when creating a `hcp_service_principal_key` resource must have `roles/Admin` on the parent resource; either the project or organization.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withRotateTriggers()`](#fn-withrotatetriggers)
* [`fn withServicePrincipal()`](#fn-withserviceprincipal)

## Fields

### fn new

```ts
new()
```


`hcp.service_principal_key.new` injects a new `hcp_service_principal_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.service_principal_key.new('some_id')

You can get the reference to the `id` field of the created `hcp.service_principal_key` using the reference:

    $._ref.hcp_service_principal_key.some_id.get('id')

This is the same as directly entering `"${ hcp_service_principal_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `rotate_triggers` (`obj`): A map of arbitrary string key/value pairs that will force recreation of the key when they change, enabling key based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created. When `null`, the `rotate_triggers` field will be omitted from the resulting object.
  - `service_principal` (`string`): The service principal&#39;s resource name for which a key should be created.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.service_principal_key.newAttrs` constructs a new object with attributes and blocks configured for the `service_principal_key`
Terraform resource.

Unlike [hcp.service_principal_key.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `rotate_triggers` (`obj`): A map of arbitrary string key/value pairs that will force recreation of the key when they change, enabling key based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created. When `null`, the `rotate_triggers` field will be omitted from the resulting object.
  - `service_principal` (`string`): The service principal&#39;s resource name for which a key should be created.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_principal_key` resource into the root Terraform configuration.


### fn withRotateTriggers

```ts
withRotateTriggers()
```

`hcp.obj.withRotateTriggers` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the rotate_triggers field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `rotate_triggers` field.


### fn withServicePrincipal

```ts
withServicePrincipal()
```

`hcp.string.withServicePrincipal` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_principal field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_principal` field.
