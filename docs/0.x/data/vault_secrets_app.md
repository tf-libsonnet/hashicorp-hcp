---
permalink: /data/vault_secrets_app/
---

# data.vault_secrets_app

`vault_secrets_app` represents the `hcp_vault_secrets_app` Terraform data source.

The Vault Secrets app data source retrieves secrets and their latest version values for a given application.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppName()`](#fn-withappname)

## Fields

### fn new

```ts
new()
```


`hcp.data.vault_secrets_app.new` injects a new `data_hcp_vault_secrets_app` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.vault_secrets_app.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.vault_secrets_app` using the reference:

    $._ref.data_hcp_vault_secrets_app.some_id.get('id')

This is the same as directly entering `"${ data_hcp_vault_secrets_app.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `app_name` (`string`): The name of the Vault Secrets application.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.vault_secrets_app.newAttrs` constructs a new object with attributes and blocks configured for the `vault_secrets_app`
Terraform data source.

Unlike [hcp.data.vault_secrets_app.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `app_name` (`string`): The name of the Vault Secrets application.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vault_secrets_app` data source into the root Terraform configuration.


### fn withAppName

```ts
withAppName()
```

`hcp.string.withAppName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the app_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `app_name` field.
