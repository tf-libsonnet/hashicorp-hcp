---
permalink: /vault_secrets_app/
---

# vault_secrets_app

`vault_secrets_app` represents the `hcp_vault_secrets_app` Terraform resource.

The Vault Secrets app resource manages an application.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppName()`](#fn-withappname)
* [`fn withDescription()`](#fn-withdescription)

## Fields

### fn new

```ts
new()
```


`hcp.vault_secrets_app.new` injects a new `hcp_vault_secrets_app` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.vault_secrets_app.new('some_id')

You can get the reference to the `id` field of the created `hcp.vault_secrets_app` using the reference:

    $._ref.hcp_vault_secrets_app.some_id.get('id')

This is the same as directly entering `"${ hcp_vault_secrets_app.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `app_name` (`string`): The Vault Secrets App name.
  - `description` (`string`): The Vault Secrets app description When `null`, the `description` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.vault_secrets_app.newAttrs` constructs a new object with attributes and blocks configured for the `vault_secrets_app`
Terraform resource.

Unlike [hcp.vault_secrets_app.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `app_name` (`string`): The Vault Secrets App name.
  - `description` (`string`): The Vault Secrets app description When `null`, the `description` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vault_secrets_app` resource into the root Terraform configuration.


### fn withAppName

```ts
withAppName()
```

`hcp.string.withAppName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the app_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `app_name` field.


### fn withDescription

```ts
withDescription()
```

`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.
