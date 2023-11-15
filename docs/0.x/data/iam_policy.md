---
permalink: /data/iam_policy/
---

# data.iam_policy

`iam_policy` represents the `hcp_iam_policy` Terraform data source.

Generates an IAM policy that may be referenced by and applied to other HCP IAM resources, such as the `hcp_project_iam_policy` resource.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBindings()`](#fn-withbindings)
* [`fn withBindingsMixin()`](#fn-withbindingsmixin)

## Fields

### fn new

```ts
new()
```


`hcp.data.iam_policy.new` injects a new `data_hcp_iam_policy` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.iam_policy.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.iam_policy` using the reference:

    $._ref.data_hcp_iam_policy.some_id.get('id')

This is the same as directly entering `"${ data_hcp_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `bindings` (`list[obj]`): A binding associates a set of principals to a role.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_policy`
Terraform data source.

Unlike [hcp.data.iam_policy.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `bindings` (`list[obj]`): A binding associates a set of principals to a role.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iam_policy` data source into the root Terraform configuration.


### fn withBindings

```ts
withBindings()
```

`hcp.list[obj].withBindings` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the bindings field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bindings` field.


### fn withBindingsMixin

```ts
withBindingsMixin()
```

`hcp.list[obj].withBindingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the bindings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withBindings](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `bindings` field.
