local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project', url='', help='`project` represents the `hcp_project` Terraform resource.\n\nThe project resource manages a HCP Project.\n\nThe user or service account that is running Terraform when creating a `hcp_project` resource must have `roles/admin` on the specified organization.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.project.new` injects a new `hcp_project` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.project.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.project` using the reference:\n\n    $._ref.hcp_project.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_project.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The project\u0026#39;s description When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The project\u0026#39;s name.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_project',
    label=resourceLabel,
    attrs=self.newAttrs(description=description, name=name),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.project.newAttrs` constructs a new object with attributes and blocks configured for the `project`\nTerraform resource.\n\nUnlike [hcp.project.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The project&#39;s description When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The project&#39;s name.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null
  ):: std.prune(a={
    description: description,
    name: name,
  }),
  '#withDescription':: d.fn(help='`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      hcp_project+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`hcp.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      hcp_project+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
}
