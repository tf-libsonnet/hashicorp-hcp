local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_iam_policy', url='', help='`project_iam_policy` represents the `hcp_project_iam_policy` Terraform resource.\n\nSets the project&#39;s IAM policy and replaces any existing policy.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.project_iam_policy.new` injects a new `hcp_project_iam_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.project_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.project_iam_policy` using the reference:\n\n    $._ref.hcp_project_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_project_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `policy_data` (`string`): The policy to apply.\n  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    policy_data,
    project_id=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_project_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project_id=project_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.project_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_policy`\nTerraform resource.\n\nUnlike [hcp.project_iam_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `policy_data` (`string`): The policy to apply.\n  - `project_id` (`string`): The ID of the HCP project to apply the IAM Policy to. If unspecified, the project configured on the provider is used. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    policy_data,
    project_id=null
  ):: std.prune(a={
    policy_data: policy_data,
    project_id: project_id,
  }),
  '#withPolicyData':: d.fn(help='`hcp.string.withPolicyData` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_data` field.\n', args=[]),
  withPolicyData(resourceLabel, value): {
    resource+: {
      hcp_project_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_project_iam_policy+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
}
