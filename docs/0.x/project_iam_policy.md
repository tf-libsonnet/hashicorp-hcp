---
permalink: /project_iam_policy/
---

# project_iam_policy

`project_iam_policy` represents the `hcp_project_iam_policy` Terraform resource.

Sets the project&#39;s IAM policy and replaces any existing policy.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withPolicyData()`](#fn-withpolicydata)
* [`fn withProjectId()`](#fn-withprojectid)

## Fields

### fn new

```ts
new()
```


`hcp.project_iam_policy.new` injects a new `hcp_project_iam_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.project_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `hcp.project_iam_policy` using the reference:

    $._ref.hcp_project_iam_policy.some_id.get('id')

This is the same as directly entering `"${ hcp_project_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `policy_data` (`string`): The policy to apply.
  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.project_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_policy`
Terraform resource.

Unlike [hcp.project_iam_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `policy_data` (`string`): The policy to apply.
  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_policy` resource into the root Terraform configuration.


### fn withPolicyData

```ts
withPolicyData()
```

`hcp.string.withPolicyData` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the policy_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `policy_data` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.
