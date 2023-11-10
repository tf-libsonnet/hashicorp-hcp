local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vault_secrets_secret', url='', help='`vault_secrets_secret` represents the `hcp_vault_secrets_secret` Terraform data source.\n\nThe Vault Secrets secret data source retrieves a singular secret and its latest version.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.vault_secrets_secret.new` injects a new `data_hcp_vault_secrets_secret` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.vault_secrets_secret.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.vault_secrets_secret` using the reference:\n\n    $._ref.data_hcp_vault_secrets_secret.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_vault_secrets_secret.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `app_name` (`string`): The name of the Vault Secrets application.\n  - `secret_name` (`string`): The name of the Vault Secrets secret.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    app_name,
    secret_name,
    _meta={}
  ):: tf.withData(
    type='hcp_vault_secrets_secret',
    label=dataSrcLabel,
    attrs=self.newAttrs(app_name=app_name, secret_name=secret_name),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.vault_secrets_secret.newAttrs` constructs a new object with attributes and blocks configured for the `vault_secrets_secret`\nTerraform data source.\n\nUnlike [hcp.data.vault_secrets_secret.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `app_name` (`string`): The name of the Vault Secrets application.\n  - `secret_name` (`string`): The name of the Vault Secrets secret.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `vault_secrets_secret` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    app_name,
    secret_name
  ):: std.prune(a={
    app_name: app_name,
    secret_name: secret_name,
  }),
  '#withAppName':: d.fn(help='`hcp.string.withAppName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the app_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `app_name` field.\n', args=[]),
  withAppName(dataSrcLabel, value): {
    data+: {
      hcp_vault_secrets_secret+: {
        [dataSrcLabel]+: {
          app_name: value,
        },
      },
    },
  },
  '#withSecretName':: d.fn(help='`hcp.string.withSecretName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the secret_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `secret_name` field.\n', args=[]),
  withSecretName(dataSrcLabel, value): {
    data+: {
      hcp_vault_secrets_secret+: {
        [dataSrcLabel]+: {
          secret_name: value,
        },
      },
    },
  },
}
