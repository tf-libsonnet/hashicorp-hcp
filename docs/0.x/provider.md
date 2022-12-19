---
permalink: /provider/
---

# provider

`provider` represents the `hcp` Terraform provider config.



This package contains functions and utilities for setting up the provider using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)

## Fields

### fn new

```ts
new()
```


`hcp.provider.new` injects a new `hcp` Terraform `provider`
block into the root module document.

Optionally, this inserts the provider into the
[required_providers](https://developer.hashicorp.com/terraform/language/providers/requirements) `terraform` sub block if
the `src` and/or `version` parameters are set.

**Args**:
  - `client_id` (`string`): The OAuth2 Client ID for API operations. When `null`, the `client_id` field will be omitted from the resulting object.
  - `client_secret` (`string`): The OAuth2 Client Secret for API operations. When `null`, the `client_secret` field will be omitted from the resulting object.
  - `alias` (`string`): The provider `alias` to set for this instance of the provider block. When `null`, the `alias`
  field will be omitted from the resulting provider block.
  - `src` (`string`): The provider `source` to set on the resulting `required_providers` block. If `src` or `version` is
  set and is not `null`, a `required_providers` block and entry for the provider will be injected into the document.
  - `version` (`string`): The provider `version` to set on the resulting `required_providers` block. If `src` or
  `version` is set and is not `null`, a `required_providers` block and entry for the provider will be injected into the
  document.


**Returns**:
- A mixin object that injects the new provider (and optionally, `required_providers` block) into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.provider.` constructs a new object with attributes and blocks configured for the `hcp`
Terraform `provider`.

Unlike [hcp.provider.new](#fn-hcpnew), this function will not inject the `provider`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `client_id` (`string`): The OAuth2 Client ID for API operations. When `null`, the `client_id` field will be omitted from the resulting object.
  - `client_secret` (`string`): The OAuth2 Client Secret for API operations. When `null`, the `client_secret` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) to construct a new `hcp` provider
  configuration into the root Terraform configuration.
