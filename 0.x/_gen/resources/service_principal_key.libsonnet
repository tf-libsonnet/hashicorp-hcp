local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_principal_key', url='', help='`service_principal_key` represents the `hcp_service_principal_key` Terraform resource.\n\nThe service principal key resource manages a service principal key.\n\nThe user or service account that is running Terraform when creating a `hcp_service_principal_key` resource must have `roles/admin` on the parent resource; either the project or organization.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.service_principal_key.new` injects a new `hcp_service_principal_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.service_principal_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.service_principal_key` using the reference:\n\n    $._ref.hcp_service_principal_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_service_principal_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `rotate_triggers` (`obj`): A map of arbitrary string key/value pairs that will force recreation of the key when they change, enabling key based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created. When `null`, the `rotate_triggers` field will be omitted from the resulting object.\n  - `service_principal` (`string`): The service principal\u0026#39;s resource name for which a key should be created.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    service_principal,
    rotate_triggers=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_service_principal_key',
    label=resourceLabel,
    attrs=self.newAttrs(rotate_triggers=rotate_triggers, service_principal=service_principal),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.service_principal_key.newAttrs` constructs a new object with attributes and blocks configured for the `service_principal_key`\nTerraform resource.\n\nUnlike [hcp.service_principal_key.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `rotate_triggers` (`obj`): A map of arbitrary string key/value pairs that will force recreation of the key when they change, enabling key based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created. When `null`, the `rotate_triggers` field will be omitted from the resulting object.\n  - `service_principal` (`string`): The service principal&#39;s resource name for which a key should be created.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_principal_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    service_principal,
    rotate_triggers=null
  ):: std.prune(a={
    rotate_triggers: rotate_triggers,
    service_principal: service_principal,
  }),
  '#withRotateTriggers':: d.fn(help='`hcp.obj.withRotateTriggers` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the rotate_triggers field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `rotate_triggers` field.\n', args=[]),
  withRotateTriggers(resourceLabel, value): {
    resource+: {
      hcp_service_principal_key+: {
        [resourceLabel]+: {
          rotate_triggers: value,
        },
      },
    },
  },
  '#withServicePrincipal':: d.fn(help='`hcp.string.withServicePrincipal` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_principal field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_principal` field.\n', args=[]),
  withServicePrincipal(resourceLabel, value): {
    resource+: {
      hcp_service_principal_key+: {
        [resourceLabel]+: {
          service_principal: value,
        },
      },
    },
  },
}
