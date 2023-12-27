---
permalink: /provider/
---

# provider

`provider` represents the `hcp` Terraform provider config.



This package contains functions and utilities for setting up the provider using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`obj workload_identity`](#obj-workload_identity)
  * [`fn new()`](#fn-workload_identitynew)

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
  - `credential_file` (`string`): The path to an HCP credential file to use to authenticate the provider to HCP. You can alternatively set the HCP_CRED_FILE environment variable to point at a credential file as well. Using a credential file allows you to authenticate the provider as a service principal via client credentials or dynamically based on Workload Identity Federation. When `null`, the `credential_file` field will be omitted from the resulting object.
  - `project_id` (`string`): The default project in which resources should be created. When `null`, the `project_id` field will be omitted from the resulting object.
  - `workload_identity` (`list[obj]`): Allows authenticating the provider by exchanging the OAuth 2.0 access token or OpenID Connect token specified in the `token_file` for a HCP service principal using Workload Identity Federation. When `null`, the `workload_identity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.provider.workload_identity.new](#fn-hcpworkloadidentitynew) constructor.
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
  - `credential_file` (`string`): The path to an HCP credential file to use to authenticate the provider to HCP. You can alternatively set the HCP_CRED_FILE environment variable to point at a credential file as well. Using a credential file allows you to authenticate the provider as a service principal via client credentials or dynamically based on Workload Identity Federation. When `null`, the `credential_file` field will be omitted from the resulting object.
  - `project_id` (`string`): The default project in which resources should be created. When `null`, the `project_id` field will be omitted from the resulting object.
  - `workload_identity` (`list[obj]`): Allows authenticating the provider by exchanging the OAuth 2.0 access token or OpenID Connect token specified in the `token_file` for a HCP service principal using Workload Identity Federation. When `null`, the `workload_identity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.provider.workload_identity.new](#fn-hcpworkloadidentitynew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) to construct a new `hcp` provider
  configuration into the root Terraform configuration.


## obj workload_identity



### fn workload_identity.new

```ts
new()
```


`hcp.workload_identity.new` constructs a new object with attributes and blocks configured for the `workload_identity`
Terraform sub block.



**Args**:
  - `resource_name` (`string`): The resource_name of the Workload Identity Provider to exchange the token with.
  - `token_file` (`string`): The path to a file containing a JWT token retrieved from an OpenID Connect (OIDC) or OAuth2 provider.

**Returns**:
  - An attribute object that represents the `workload_identity` sub block.
