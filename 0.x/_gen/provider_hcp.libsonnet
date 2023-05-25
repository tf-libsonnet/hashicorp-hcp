local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='provider', url='', help='`provider` represents the `hcp` Terraform provider config.\n\n\n\nThis package contains functions and utilities for setting up the provider using Jsonnet code.\n'),
  '#new':: d.fn(help='\n`hcp.provider.new` injects a new `hcp` Terraform `provider`\nblock into the root module document.\n\nOptionally, this inserts the provider into the\n[required_providers](https://developer.hashicorp.com/terraform/language/providers/requirements) `terraform` sub block if\nthe `src` and/or `version` parameters are set.\n\n**Args**:\n  - `client_id` (`string`): The OAuth2 Client ID for API operations. When `null`, the `client_id` field will be omitted from the resulting object.\n  - `client_secret` (`string`): The OAuth2 Client Secret for API operations. When `null`, the `client_secret` field will be omitted from the resulting object.\n  - `project_id` (`string`): The default project in which resources should be created. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `alias` (`string`): The provider `alias` to set for this instance of the provider block. When `null`, the `alias`\n  field will be omitted from the resulting provider block.\n  - `src` (`string`): The provider `source` to set on the resulting `required_providers` block. If `src` or `version` is\n  set and is not `null`, a `required_providers` block and entry for the provider will be injected into the document.\n  - `version` (`string`): The provider `version` to set on the resulting `required_providers` block. If `src` or\n  `version` is set and is not `null`, a `required_providers` block and entry for the provider will be injected into the\n  document.\n\n\n**Returns**:\n- A mixin object that injects the new provider (and optionally, `required_providers` block) into the root Terraform configuration.\n', args=[]),
  new(
    client_id=null,
    client_secret=null,
    project_id=null,
    alias=null,
    src=null,
    version=null
  ):: tf.withProvider(
    name='hcp',
    alias=alias,
    src=src,
    version=version,
    attrs=self.newAttrs(client_id=client_id, client_secret=client_secret, project_id=project_id)
  ),
  '#newAttrs':: d.fn(help='\n`hcp.provider.` constructs a new object with attributes and blocks configured for the `hcp`\nTerraform `provider`.\n\nUnlike [hcp.provider.new](#fn-hcpnew), this function will not inject the `provider`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `client_id` (`string`): The OAuth2 Client ID for API operations. When `null`, the `client_id` field will be omitted from the resulting object.\n  - `client_secret` (`string`): The OAuth2 Client Secret for API operations. When `null`, the `client_secret` field will be omitted from the resulting object.\n  - `project_id` (`string`): The default project in which resources should be created. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withProvider](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withprovider) to construct a new `hcp` provider\n  configuration into the root Terraform configuration.\n', args=[]),
  newAttrs(
    client_id=null,
    client_secret=null,
    project_id=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
    project_id: project_id,
  }),
}
