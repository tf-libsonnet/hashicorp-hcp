---
permalink: /iam_workload_identity_provider/
---

# iam_workload_identity_provider

`iam_workload_identity_provider` represents the `hcp_iam_workload_identity_provider` Terraform resource.

The workload identity provider resource allows federating an external identity to a HCP Service Principal.

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAws()`](#fn-withaws)
* [`fn withAwsMixin()`](#fn-withawsmixin)
* [`fn withConditionalAccess()`](#fn-withconditionalaccess)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withOidc()`](#fn-withoidc)
* [`fn withOidcMixin()`](#fn-withoidcmixin)
* [`fn withServicePrincipal()`](#fn-withserviceprincipal)

## Fields

### fn new

```ts
new()
```


`hcp.iam_workload_identity_provider.new` injects a new `hcp_iam_workload_identity_provider` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.iam_workload_identity_provider.new('some_id')

You can get the reference to the `id` field of the created `hcp.iam_workload_identity_provider` using the reference:

    $._ref.hcp_iam_workload_identity_provider.some_id.get('id')

This is the same as directly entering `"${ hcp_iam_workload_identity_provider.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `aws` (`obj`): Set the `aws` field on the resulting resource block. When `null`, the `aws` field will be omitted from the resulting object.
  - `conditional_access` (`string`): conditional_access is a hashicorp/go-bexpr string that is evaluated when exchanging tokens. It restricts which upstream identities are allowed to access the service principal.
  - `description` (`string`): A description for the workload identity provider. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The workload identity provider&#39;s name. Ideally, this should be descriptive of the workload being federated.
  - `oidc` (`obj`): Set the `oidc` field on the resulting resource block. When `null`, the `oidc` field will be omitted from the resulting object.
  - `service_principal` (`string`): The service principal&#39;s resource name for which the workload identity provider will be created for. Only service principals created within a project are allowed.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.iam_workload_identity_provider.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workload_identity_provider`
Terraform resource.

Unlike [hcp.iam_workload_identity_provider.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `aws` (`obj`): Set the `aws` field on the resulting object. When `null`, the `aws` field will be omitted from the resulting object.
  - `conditional_access` (`string`): conditional_access is a hashicorp/go-bexpr string that is evaluated when exchanging tokens. It restricts which upstream identities are allowed to access the service principal.
  - `description` (`string`): A description for the workload identity provider. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The workload identity provider&#39;s name. Ideally, this should be descriptive of the workload being federated.
  - `oidc` (`obj`): Set the `oidc` field on the resulting object. When `null`, the `oidc` field will be omitted from the resulting object.
  - `service_principal` (`string`): The service principal&#39;s resource name for which the workload identity provider will be created for. Only service principals created within a project are allowed.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workload_identity_provider` resource into the root Terraform configuration.


### fn withAws

```ts
withAws()
```

`hcp.obj.withAws` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the aws field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `aws` field.


### fn withAwsMixin

```ts
withAwsMixin()
```

`hcp.obj.withAwsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the aws field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withAws](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `aws` field.


### fn withConditionalAccess

```ts
withConditionalAccess()
```

`hcp.string.withConditionalAccess` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the conditional_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `conditional_access` field.


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


### fn withOidc

```ts
withOidc()
```

`hcp.obj.withOidc` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the oidc field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `oidc` field.


### fn withOidcMixin

```ts
withOidcMixin()
```

`hcp.obj.withOidcMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the oidc field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withOidc](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `oidc` field.


### fn withServicePrincipal

```ts
withServicePrincipal()
```

`hcp.string.withServicePrincipal` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_principal field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_principal` field.
