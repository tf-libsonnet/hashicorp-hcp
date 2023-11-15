local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_iam_binding', url='', help='`project_iam_binding` represents the `hcp_project_iam_binding` Terraform resource.\n\nUpdates the project&#39;s IAM policy to bind a role to a new member. Existing bindings are preserved.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.project_iam_binding.new` injects a new `hcp_project_iam_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.project_iam_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.project_iam_binding` using the reference:\n\n    $._ref.hcp_project_iam_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_project_iam_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `principal_id` (`string`): The principal to bind to the given role.\n  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `role` (`string`): The role name to bind to the given principal.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    principal_id,
    role,
    project_id=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_project_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(principal_id=principal_id, project_id=project_id, role=role),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.project_iam_binding.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_binding`\nTerraform resource.\n\nUnlike [hcp.project_iam_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `principal_id` (`string`): The principal to bind to the given role.\n  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `role` (`string`): The role name to bind to the given principal.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    principal_id,
    role,
    project_id=null
  ):: std.prune(a={
    principal_id: principal_id,
    project_id: project_id,
    role: role,
  }),
  '#withPrincipalId':: d.fn(help='`hcp.string.withPrincipalId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the principal_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `principal_id` field.\n', args=[]),
  withPrincipalId(resourceLabel, value): {
    resource+: {
      hcp_project_iam_binding+: {
        [resourceLabel]+: {
          principal_id: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_project_iam_binding+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`hcp.string.withRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      hcp_project_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}
