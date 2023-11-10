local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_principal', url='', help='`service_principal` represents the `hcp_service_principal` Terraform data source.\n\nThe service principal data source retrieves the given service principal.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.service_principal.new` injects a new `data_hcp_service_principal` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.service_principal.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.service_principal` using the reference:\n\n    $._ref.data_hcp_service_principal.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_service_principal.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `resource_name` (`string`): The service principal\u0026#39;s resource name in format `iam/project/\u0026lt;project_id\u0026gt;/service-principal/\u0026lt;name\u0026gt;` or `iam/organization/\u0026lt;organization_id\u0026gt;/service-principal/\u0026lt;name\u0026gt;`\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    resource_name,
    _meta={}
  ):: tf.withData(
    type='hcp_service_principal',
    label=dataSrcLabel,
    attrs=self.newAttrs(resource_name=resource_name),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.service_principal.newAttrs` constructs a new object with attributes and blocks configured for the `service_principal`\nTerraform data source.\n\nUnlike [hcp.data.service_principal.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `resource_name` (`string`): The service principal&#39;s resource name in format `iam/project/&lt;project_id&gt;/service-principal/&lt;name&gt;` or `iam/organization/&lt;organization_id&gt;/service-principal/&lt;name&gt;`\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `service_principal` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    resource_name
  ):: std.prune(a={
    resource_name: resource_name,
  }),
  '#withResourceName':: d.fn(help='`hcp.string.withResourceName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the resource_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `resource_name` field.\n', args=[]),
  withResourceName(dataSrcLabel, value): {
    data+: {
      hcp_service_principal+: {
        [dataSrcLabel]+: {
          resource_name: value,
        },
      },
    },
  },
}
