local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='provider', url='', help='`provider` represents the `hcp` Terraform provider config.\n\n\n\nThis package contains functions and utilities for setting up the provider using Jsonnet code.\n'),
  '#new':: d.fn(help='\n`hcp.provider.new` injects a new `hcp` Terraform `provider`\nblock into the root module document.\n\nOptionally, this inserts the provider into the\n[required_providers](https://developer.hashicorp.com/terraform/language/providers/requirements) `terraform` sub block if\nthe `src` and/or `version` parameters are set.\n\n**Args**:\n  - `client_id` (`string`): The OAuth2 Client ID for API operations. When `null`, the `client_id` field will be omitted from the resulting object.\n  - `client_secret` (`string`): The OAuth2 Client Secret for API operations. When `null`, the `client_secret` field will be omitted from the resulting object.\n  - `credential_file` (`string`): The path to an HCP credential file to use to authenticate the provider to HCP. You can alternatively set the HCP_CRED_FILE environment variable to point at a credential file as well. Using a credential file allows you to authenticate the provider as a service principal via client credentials or dynamically based on Workload Identity Federation. When `null`, the `credential_file` field will be omitted from the resulting object.\n  - `project_id` (`string`): The default project in which resources should be created. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `workload_identity` (`list[obj]`): Allows authenticating the provider by exchanging the OAuth 2.0 access token or OpenID Connect token specified in the `token_file` for a HCP service principal using Workload Identity Federation. When `null`, the `workload_identity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.provider.workload_identity.new](#fn-hcpworkloadidentitynew) constructor.\n  - `alias` (`string`): The provider `alias` to set for this instance of the provider block. When `null`, the `alias`\n  field will be omitted from the resulting provider block.\n  - `src` (`string`): The provider `source` to set on the resulting `required_providers` block. If `src` or `version` is\n  set and is not `null`, a `required_providers` block and entry for the provider will be injected into the document.\n  - `version` (`string`): The provider `version` to set on the resulting `required_providers` block. If `src` or\n  `version` is set and is not `null`, a `required_providers` block and entry for the provider will be injected into the\n  document.\n\n\n**Returns**:\n- A mixin object that injects the new provider (and optionally, `required_providers` block) into the root Terraform configuration.\n', args=[]),
  new(
    client_id=null,
    client_secret=null,
    credential_file=null,
    project_id=null,
    workload_identity=null,
    alias=null,
    src=null,
    version=null
  ):: tf.withProvider(
    name='hcp',
    alias=alias,
    src=src,
    version=version,
    attrs=self.newAttrs(
      client_id=client_id,
      client_secret=client_secret,
      credential_file=credential_file,
      project_id=project_id,
      workload_identity=workload_identity
    )
  ),
  '#newAttrs':: d.fn(help='\n`hcp.provider.` constructs a new object with attributes and blocks configured for the `hcp`\nTerraform `provider`.\n\nUnlike [hcp.provider.new](#fn-hcpnew), this function will not inject the `provider`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `client_id` (`string`): The OAuth2 Client ID for API operations. When `null`, the `client_id` field will be omitted from the resulting object.\n  - `client_secret` (`string`): The OAuth2 Client Secret for API operations. When `null`, the `client_secret` field will be omitted from the resulting object.\n  - `credential_file` (`string`): The path to an HCP credential file to use to authenticate the provider to HCP. You can alternatively set the HCP_CRED_FILE environment variable to point at a credential file as well. Using a credential file allows you to authenticate the provider as a service principal via client credentials or dynamically based on Workload Identity Federation. When `null`, the `credential_file` field will be omitted from the resulting object.\n  - `project_id` (`string`): The default project in which resources should be created. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `workload_identity` (`list[obj]`): Allows authenticating the provider by exchanging the OAuth 2.0 access token or OpenID Connect token specified in the `token_file` for a HCP service principal using Workload Identity Federation. When `null`, the `workload_identity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.provider.workload_identity.new](#fn-hcpworkloadidentitynew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) to construct a new `hcp` provider\n  configuration into the root Terraform configuration.\n', args=[]),
  newAttrs(
    client_id=null,
    client_secret=null,
    credential_file=null,
    project_id=null,
    workload_identity=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
    credential_file: credential_file,
    project_id: project_id,
    workload_identity: workload_identity,
  }),
  workload_identity:: {
    '#new':: d.fn(help='\n`hcp.workload_identity.new` constructs a new object with attributes and blocks configured for the `workload_identity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_name` (`string`): The resource_name of the Workload Identity Provider to exchange the token with.\n  - `token_file` (`string`): The path to a file containing a JWT token retrieved from an OpenID Connect (OIDC) or OAuth2 provider.\n\n**Returns**:\n  - An attribute object that represents the `workload_identity` sub block.\n', args=[]),
    new(
      resource_name,
      token_file
    ):: std.prune(a={
      resource_name: resource_name,
      token_file: token_file,
    }),
  },
}
