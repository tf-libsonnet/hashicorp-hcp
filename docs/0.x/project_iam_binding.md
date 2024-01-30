---
permalink: /project_iam_binding/
---

# project_iam_binding

`project_iam_binding` represents the `hcp_project_iam_binding` Terraform resource.

Updates the project&#39;s IAM policy to bind a role to a new member. Existing bindings are preserved.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withPrincipalId()`](#fn-withprincipalid)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withRole()`](#fn-withrole)

## Fields

### fn new

```ts
new()
```


`hcp.project_iam_binding.new` injects a new `hcp_project_iam_binding` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.project_iam_binding.new('some_id')

You can get the reference to the `id` field of the created `hcp.project_iam_binding` using the reference:

    $._ref.hcp_project_iam_binding.some_id.get('id')

This is the same as directly entering `"${ hcp_project_iam_binding.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `principal_id` (`string`): The principal to bind to the given role.
  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `role` (`string`): The role name to bind to the given principal.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.project_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_binding`
Terraform resource.

Unlike [hcp.project_iam_binding.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `principal_id` (`string`): The principal to bind to the given role.
  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.
  - `role` (`string`): The role name to bind to the given principal.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_binding` resource into the root Terraform configuration.


### fn withPrincipalId

```ts
withPrincipalId()
```

`hcp.string.withPrincipalId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the principal_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `principal_id` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withRole

```ts
withRole()
```

`hcp.string.withRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role` field.
