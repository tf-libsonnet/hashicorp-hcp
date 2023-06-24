local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='hvn', url='', help='`hvn` represents the `hcp_hvn` Terraform resource.\n\nThe HVN resource allows you to manage a HashiCorp Virtual Network in HCP.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.hvn.new` injects a new `hcp_hvn` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.hvn.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.hvn` using the reference:\n\n    $._ref.hcp_hvn.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_hvn.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cidr_block` (`string`): The CIDR range of the HVN. If this is not provided, the service will provide a default value. When `null`, the `cidr_block` field will be omitted from the resulting object.\n  - `cloud_provider` (`string`): The provider where the HVN is located. The provider \u0026#39;aws\u0026#39; is generally available and \u0026#39;azure\u0026#39; is in public beta.\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `project_id` (`string`): \nThe ID of the HCP project where the HVN is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `region` (`string`): The region where the HVN is located.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cloud_provider,
    hvn_id,
    region,
    cidr_block=null,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_hvn',
    label=resourceLabel,
    attrs=self.newAttrs(
      cidr_block=cidr_block,
      cloud_provider=cloud_provider,
      hvn_id=hvn_id,
      project_id=project_id,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.hvn.newAttrs` constructs a new object with attributes and blocks configured for the `hvn`\nTerraform resource.\n\nUnlike [hcp.hvn.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cidr_block` (`string`): The CIDR range of the HVN. If this is not provided, the service will provide a default value. When `null`, the `cidr_block` field will be omitted from the resulting object.\n  - `cloud_provider` (`string`): The provider where the HVN is located. The provider &#39;aws&#39; is generally available and &#39;azure&#39; is in public beta.\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `project_id` (`string`): \nThe ID of the HCP project where the HVN is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `region` (`string`): The region where the HVN is located.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.hvn.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `hvn` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cloud_provider,
    hvn_id,
    region,
    cidr_block=null,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    cidr_block: cidr_block,
    cloud_provider: cloud_provider,
    hvn_id: hvn_id,
    project_id: project_id,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.hvn.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      default=null,
      delete=null
    ):: std.prune(a={
      create: create,
      default: default,
      delete: delete,
    }),
  },
  '#withCidrBlock':: d.fn(help='`hcp.string.withCidrBlock` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cidr_block field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cidr_block` field.\n', args=[]),
  withCidrBlock(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          cidr_block: value,
        },
      },
    },
  },
  '#withCloudProvider':: d.fn(help='`hcp.string.withCloudProvider` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cloud_provider field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cloud_provider` field.\n', args=[]),
  withCloudProvider(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          cloud_provider: value,
        },
      },
    },
  },
  '#withHvnId':: d.fn(help='`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`hcp.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
