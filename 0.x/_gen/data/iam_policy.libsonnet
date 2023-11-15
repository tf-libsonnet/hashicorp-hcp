local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_policy', url='', help='`iam_policy` represents the `hcp_iam_policy` Terraform data source.\n\nGenerates an IAM policy that may be referenced by and applied to other HCP IAM resources, such as the `hcp_project_iam_policy` resource.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.iam_policy.new` injects a new `data_hcp_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.iam_policy` using the reference:\n\n    $._ref.data_hcp_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `bindings` (`list[obj]`): A binding associates a set of principals to a role.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    bindings,
    _meta={}
  ):: tf.withData(
    type='hcp_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(bindings=bindings),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iam_policy`\nTerraform data source.\n\nUnlike [hcp.data.iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bindings` (`list[obj]`): A binding associates a set of principals to a role.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bindings
  ):: std.prune(a={
    bindings: bindings,
  }),
  '#withBindings':: d.fn(help='`hcp.list[obj].withBindings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the bindings field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bindings` field.\n', args=[]),
  withBindings(dataSrcLabel, value): {
    data+: {
      hcp_iam_policy+: {
        [dataSrcLabel]+: {
          bindings: value,
        },
      },
    },
  },
  '#withBindingsMixin':: d.fn(help='`hcp.list[obj].withBindingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform data source block to set or update the bindings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withBindings](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bindings` field.\n', args=[]),
  withBindingsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_iam_policy+: {
        [dataSrcLabel]+: {
          bindings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
