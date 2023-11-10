local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='iam_workload_identity_provider', url='', help='`iam_workload_identity_provider` represents the `hcp_iam_workload_identity_provider` Terraform resource.\n\nThe workload identity provider resource allows federating an external identity to a HCP Service Principal.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.iam_workload_identity_provider.new` injects a new `hcp_iam_workload_identity_provider` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.iam_workload_identity_provider.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.iam_workload_identity_provider` using the reference:\n\n    $._ref.hcp_iam_workload_identity_provider.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_iam_workload_identity_provider.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `aws` (`obj`): Set the `aws` field on the resulting resource block. When `null`, the `aws` field will be omitted from the resulting object.\n  - `conditional_access` (`string`): conditional_access is a hashicorp/go-bexpr string that is evaluated when exchanging tokens. It restricts which upstream identities are allowed to access the service principal.\n  - `description` (`string`): A description for the workload identity provider. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The workload identity provider\u0026#39;s name. Ideally, this should be descriptive of the workload being federated.\n  - `oidc` (`obj`): Set the `oidc` field on the resulting resource block. When `null`, the `oidc` field will be omitted from the resulting object.\n  - `service_principal` (`string`): The service principal\u0026#39;s resource name for which the workload identity provider will be created for. Only service principals created within a project are allowed.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    conditional_access,
    name,
    service_principal,
    aws=null,
    description=null,
    oidc=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_iam_workload_identity_provider',
    label=resourceLabel,
    attrs=self.newAttrs(
      aws=aws,
      conditional_access=conditional_access,
      description=description,
      name=name,
      oidc=oidc,
      service_principal=service_principal
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.iam_workload_identity_provider.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workload_identity_provider`\nTerraform resource.\n\nUnlike [hcp.iam_workload_identity_provider.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `aws` (`obj`): Set the `aws` field on the resulting object. When `null`, the `aws` field will be omitted from the resulting object.\n  - `conditional_access` (`string`): conditional_access is a hashicorp/go-bexpr string that is evaluated when exchanging tokens. It restricts which upstream identities are allowed to access the service principal.\n  - `description` (`string`): A description for the workload identity provider. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The workload identity provider&#39;s name. Ideally, this should be descriptive of the workload being federated.\n  - `oidc` (`obj`): Set the `oidc` field on the resulting object. When `null`, the `oidc` field will be omitted from the resulting object.\n  - `service_principal` (`string`): The service principal&#39;s resource name for which the workload identity provider will be created for. Only service principals created within a project are allowed.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workload_identity_provider` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    conditional_access,
    name,
    service_principal,
    aws=null,
    description=null,
    oidc=null
  ):: std.prune(a={
    aws: aws,
    conditional_access: conditional_access,
    description: description,
    name: name,
    oidc: oidc,
    service_principal: service_principal,
  }),
  '#withAws':: d.fn(help='`hcp.obj.withAws` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the aws field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `aws` field.\n', args=[]),
  withAws(resourceLabel, value): {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          aws: value,
        },
      },
    },
  },
  '#withAwsMixin':: d.fn(help='`hcp.obj.withAwsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the aws field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withAws](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `aws` field.\n', args=[]),
  withAwsMixin(resourceLabel, value):: {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          aws+: value,
        },
      },
    },
  },
  '#withConditionalAccess':: d.fn(help='`hcp.string.withConditionalAccess` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the conditional_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `conditional_access` field.\n', args=[]),
  withConditionalAccess(resourceLabel, value): {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          conditional_access: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`hcp.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOidc':: d.fn(help='`hcp.obj.withOidc` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the oidc field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `oidc` field.\n', args=[]),
  withOidc(resourceLabel, value): {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          oidc: value,
        },
      },
    },
  },
  '#withOidcMixin':: d.fn(help='`hcp.obj.withOidcMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the oidc field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withOidc](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `oidc` field.\n', args=[]),
  withOidcMixin(resourceLabel, value):: {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          oidc+: value,
        },
      },
    },
  },
  '#withServicePrincipal':: d.fn(help='`hcp.string.withServicePrincipal` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_principal field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_principal` field.\n', args=[]),
  withServicePrincipal(resourceLabel, value): {
    resource+: {
      hcp_iam_workload_identity_provider+: {
        [resourceLabel]+: {
          service_principal: value,
        },
      },
    },
  },
}
