local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vault_secrets_app', url='', help='`vault_secrets_app` represents the `hcp_vault_secrets_app` Terraform resource.\n\nThe Vault Secrets app resource manages an application.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.vault_secrets_app.new` injects a new `hcp_vault_secrets_app` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.vault_secrets_app.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.vault_secrets_app` using the reference:\n\n    $._ref.hcp_vault_secrets_app.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_vault_secrets_app.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `app_name` (`string`): The Vault Secrets App name.\n  - `description` (`string`): The Vault Secrets app description When `null`, the `description` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    app_name,
    description=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_vault_secrets_app',
    label=resourceLabel,
    attrs=self.newAttrs(app_name=app_name, description=description),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.vault_secrets_app.newAttrs` constructs a new object with attributes and blocks configured for the `vault_secrets_app`\nTerraform resource.\n\nUnlike [hcp.vault_secrets_app.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_name` (`string`): The Vault Secrets App name.\n  - `description` (`string`): The Vault Secrets app description When `null`, the `description` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vault_secrets_app` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    app_name,
    description=null
  ):: std.prune(a={
    app_name: app_name,
    description: description,
  }),
  '#withAppName':: d.fn(help='`hcp.string.withAppName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the app_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `app_name` field.\n', args=[]),
  withAppName(resourceLabel, value): {
    resource+: {
      hcp_vault_secrets_app+: {
        [resourceLabel]+: {
          app_name: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      hcp_vault_secrets_app+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
}
