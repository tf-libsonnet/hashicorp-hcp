local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='aws_transit_gateway_attachment', url='', help='`aws_transit_gateway_attachment` represents the `hcp_aws_transit_gateway_attachment` Terraform resource.\n\nThe AWS transit gateway attachment resource allows you to manage a transit gateway attachment. The transit gateway attachment attaches an HVN to a user-owned transit gateway in AWS. Note that the HVN and transit gateway must be located in the same AWS region.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.aws_transit_gateway_attachment.new` injects a new `hcp_aws_transit_gateway_attachment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.aws_transit_gateway_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.aws_transit_gateway_attachment` using the reference:\n\n    $._ref.hcp_aws_transit_gateway_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_aws_transit_gateway_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `resource_share_arn` (`string`): The Amazon Resource Name (ARN) of the Resource Share that is needed to grant HCP access to the transit gateway in AWS. The Resource Share should be associated with the HCP AWS account principal (see [aws_ram_principal_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_principal_association)) and the transit gateway resource (see [aws_ram_resource_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_association))\n  - `transit_gateway_attachment_id` (`string`): The user-settable name of the transit gateway attachment in HCP.\n  - `transit_gateway_id` (`string`): The ID of the user-owned transit gateway in AWS. The AWS region of the transit gateway must match the HVN.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.aws_transit_gateway_attachment.timeouts.new](#fn-awstransitgatewayattachmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hvn_id,
    resource_share_arn,
    transit_gateway_attachment_id,
    transit_gateway_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_aws_transit_gateway_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      hvn_id=hvn_id,
      resource_share_arn=resource_share_arn,
      timeouts=timeouts,
      transit_gateway_attachment_id=transit_gateway_attachment_id,
      transit_gateway_id=transit_gateway_id
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.aws_transit_gateway_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `aws_transit_gateway_attachment`\nTerraform resource.\n\nUnlike [hcp.aws_transit_gateway_attachment.new](#fn-awstransitgatewayattachmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `resource_share_arn` (`string`): The Amazon Resource Name (ARN) of the Resource Share that is needed to grant HCP access to the transit gateway in AWS. The Resource Share should be associated with the HCP AWS account principal (see [aws_ram_principal_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_principal_association)) and the transit gateway resource (see [aws_ram_resource_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_association))\n  - `transit_gateway_attachment_id` (`string`): The user-settable name of the transit gateway attachment in HCP.\n  - `transit_gateway_id` (`string`): The ID of the user-owned transit gateway in AWS. The AWS region of the transit gateway must match the HVN.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.aws_transit_gateway_attachment.timeouts.new](#fn-awstransitgatewayattachmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `aws_transit_gateway_attachment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hvn_id,
    resource_share_arn,
    transit_gateway_attachment_id,
    transit_gateway_id,
    timeouts=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    resource_share_arn: resource_share_arn,
    timeouts: timeouts,
    transit_gateway_attachment_id: transit_gateway_attachment_id,
    transit_gateway_id: transit_gateway_id,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.aws_transit_gateway_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withHvnId':: d.fn(help='`hcp.aws_transit_gateway_attachment.withHvnId` constructs a mixin object that can be merged into the `aws_transit_gateway_attachment`\nTerraform resource block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withResourceShareArn':: d.fn(help='`hcp.aws_transit_gateway_attachment.withResourceShareArn` constructs a mixin object that can be merged into the `aws_transit_gateway_attachment`\nTerraform resource block to set or update the resource_share_arn field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `resource_share_arn` field.\n', args=[]),
  withResourceShareArn(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          resource_share_arn: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.aws_transit_gateway_attachment.withTimeouts` constructs a mixin object that can be merged into the `aws_transit_gateway_attachment`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.aws_transit_gateway_attachment.withTimeoutsMixin` constructs a mixin object that can be merged into the `aws_transit_gateway_attachment`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.aws_transit_gateway_attachment.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransitGatewayAttachmentId':: d.fn(help='`hcp.aws_transit_gateway_attachment.withTransitGatewayAttachmentId` constructs a mixin object that can be merged into the `aws_transit_gateway_attachment`\nTerraform resource block to set or update the transit_gateway_attachment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `transit_gateway_attachment_id` field.\n', args=[]),
  withTransitGatewayAttachmentId(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          transit_gateway_attachment_id: value,
        },
      },
    },
  },
  '#withTransitGatewayId':: d.fn(help='`hcp.aws_transit_gateway_attachment.withTransitGatewayId` constructs a mixin object that can be merged into the `aws_transit_gateway_attachment`\nTerraform resource block to set or update the transit_gateway_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `transit_gateway_id` field.\n', args=[]),
  withTransitGatewayId(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          transit_gateway_id: value,
        },
      },
    },
  },
}
