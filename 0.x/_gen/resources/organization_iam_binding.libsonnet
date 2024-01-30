local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='organization_iam_binding', url='', help='`organization_iam_binding` represents the `hcp_organization_iam_binding` Terraform resource.\n\nUpdates the organization&#39;s IAM policy to bind a role to a new member. Existing bindings are preserved.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.organization_iam_binding.new` injects a new `hcp_organization_iam_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.organization_iam_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.organization_iam_binding` using the reference:\n\n    $._ref.hcp_organization_iam_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_organization_iam_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `principal_id` (`string`): The principal to bind to the given role.\n  - `role` (`string`): The role name to bind to the given principal.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    principal_id,
    role,
    _meta={}
  ):: tf.withResource(
    type='hcp_organization_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(principal_id=principal_id, role=role),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.organization_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `organization_iam_binding`\nTerraform resource.\n\nUnlike [hcp.organization_iam_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `principal_id` (`string`): The principal to bind to the given role.\n  - `role` (`string`): The role name to bind to the given principal.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `organization_iam_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    principal_id,
    role
  ):: std.prune(a={
    principal_id: principal_id,
    role: role,
  }),
  '#withPrincipalId':: d.fn(help='`hcp.string.withPrincipalId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the principal_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `principal_id` field.\n', args=[]),
  withPrincipalId(resourceLabel, value): {
    resource+: {
      hcp_organization_iam_binding+: {
        [resourceLabel]+: {
          principal_id: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`hcp.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      hcp_organization_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
