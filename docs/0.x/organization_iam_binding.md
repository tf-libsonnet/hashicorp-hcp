---
permalink: /organization_iam_binding/
---

# organization_iam_binding

`organization_iam_binding` represents the `hcp_organization_iam_binding` Terraform resource.

Updates the organization&#39;s IAM policy to bind a role to a new member. Existing bindings are preserved.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withPrincipalId()`](#fn-withprincipalid)
* [`fn withRole()`](#fn-withrole)

## Fields

### fn new

```ts
new()
```


`hcp.organization_iam_binding.new` injects a new `hcp_organization_iam_binding` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.organization_iam_binding.new('some_id')

You can get the reference to the `id` field of the created `hcp.organization_iam_binding` using the reference:

    $._ref.hcp_organization_iam_binding.some_id.get('id')

This is the same as directly entering `"${ hcp_organization_iam_binding.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `principal_id` (`string`): The principal to bind to the given role.
  - `role` (`string`): The role name to bind to the given principal.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.organization_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `organization_iam_binding`
Terraform resource.

Unlike [hcp.organization_iam_binding.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `principal_id` (`string`): The principal to bind to the given role.
  - `role` (`string`): The role name to bind to the given principal.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `organization_iam_binding` resource into the root Terraform configuration.


### fn withPrincipalId

```ts
withPrincipalId()
```

`hcp.string.withPrincipalId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the principal_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `principal_id` field.


### fn withRole

```ts
withRole()
```

`hcp.string.withRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role` field.
