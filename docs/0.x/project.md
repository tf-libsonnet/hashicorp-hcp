---
permalink: /project/
---

# project

`project` represents the `hcp_project` Terraform resource.

The project resource manages a HCP Project.

The user or service account that is running Terraform when creating a `hcp_project` resource must have `roles/admin` on the specified organization.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)

## Fields

### fn new

```ts
new()
```


`hcp.project.new` injects a new `hcp_project` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.project.new('some_id')

You can get the reference to the `id` field of the created `hcp.project` using the reference:

    $._ref.hcp_project.some_id.get('id')

This is the same as directly entering `"${ hcp_project.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The project&#39;s description When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The project&#39;s name.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.project.newAttrs` constructs a new object with attributes and blocks configured for the `project`
Terraform resource.

Unlike [hcp.project.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The project&#39;s description When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The project&#39;s name.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`hcp.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.
