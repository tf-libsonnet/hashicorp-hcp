local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_principal', url='', help='`service_principal` represents the `hcp_service_principal` Terraform resource.\n\nThe service principal resource manages a HCP Service Principal.\n\nThe user or service account that is running Terraform when creating a `hcp_service_principal` resource must have `roles/admin` on the parent resource; either the project or organization.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.service_principal.new` injects a new `hcp_service_principal` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.service_principal.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.service_principal` using the reference:\n\n    $._ref.hcp_service_principal.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_service_principal.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `name` (`string`): The service principal\u0026#39;s name.\n  - `parent` (`string`): The parent location to create the service principal under. If unspecified, the service principal will be created in the project the provider is configured with. If specified, the accepted values are \u0026#34;project/\u0026lt;project_id\u0026gt;\u0026#34; or \u0026#34;organization/\u0026lt;organization_id\u0026gt;\u0026#34; When `null`, the `parent` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    parent=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_service_principal',
    label=resourceLabel,
    attrs=self.newAttrs(name=name, parent=parent),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.service_principal.newAttrs` constructs a new object with attributes and blocks configured for the `service_principal`\nTerraform resource.\n\nUnlike [hcp.service_principal.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `name` (`string`): The service principal&#39;s name.\n  - `parent` (`string`): The parent location to create the service principal under. If unspecified, the service principal will be created in the project the provider is configured with. If specified, the accepted values are &#34;project/&lt;project_id&gt;&#34; or &#34;organization/&lt;organization_id&gt;&#34; When `null`, the `parent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_principal` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    parent=null
  ):: std.prune(a={
    name: name,
    parent: parent,
  }),
  '#withName':: d.fn(help='`hcp.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      hcp_service_principal+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`hcp.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      hcp_service_principal+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
}
