---
permalink: /data/service_principal/
---

# data.service_principal

`service_principal` represents the `hcp_service_principal` Terraform data source.

The service principal data source retrieves the given service principal.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withResourceName()`](#fn-withresourcename)

## Fields

### fn new

```ts
new()
```


`hcp.data.service_principal.new` injects a new `data_hcp_service_principal` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.service_principal.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.service_principal` using the reference:

    $._ref.data_hcp_service_principal.some_id.get('id')

This is the same as directly entering `"${ data_hcp_service_principal.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `resource_name` (`string`): The service principal&#39;s resource name in format `iam/project/&lt;project_id&gt;/service-principal/&lt;name&gt;` or `iam/organization/&lt;organization_id&gt;/service-principal/&lt;name&gt;`

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.service_principal.newAttrs` constructs a new object with attributes and blocks configured for the `service_principal`
Terraform data source.

Unlike [hcp.data.service_principal.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `resource_name` (`string`): The service principal&#39;s resource name in format `iam/project/&lt;project_id&gt;/service-principal/&lt;name&gt;` or `iam/organization/&lt;organization_id&gt;/service-principal/&lt;name&gt;`

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_principal` data source into the root Terraform configuration.


### fn withResourceName

```ts
withResourceName()
```

`hcp.string.withResourceName` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the resource_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `resource_name` field.
