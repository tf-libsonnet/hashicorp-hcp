local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='aws_network_peering', url='', help='`aws_network_peering` represents the `hcp_aws_network_peering` Terraform resource.\n\nThe AWS network peering resource allows you to manage a network peering between an HVN and a peer AWS VPC.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.aws_network_peering.new` injects a new `hcp_aws_network_peering` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.aws_network_peering.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.aws_network_peering` using the reference:\n\n    $._ref.hcp_aws_network_peering.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_aws_network_peering.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `peer_account_id` (`string`): The account ID of the peer VPC in AWS.\n  - `peer_vpc_id` (`string`): The ID of the peer VPC in AWS.\n  - `peer_vpc_region` (`string`): The region of the peer VPC in AWS.\n  - `peering_id` (`string`): The ID of the network peering.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.aws_network_peering.timeouts.new](#fn-awsnetworkpeeringtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hvn_id,
    peer_account_id,
    peer_vpc_id,
    peer_vpc_region,
    peering_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_aws_network_peering',
    label=resourceLabel,
    attrs=self.newAttrs(
      hvn_id=hvn_id,
      peer_account_id=peer_account_id,
      peer_vpc_id=peer_vpc_id,
      peer_vpc_region=peer_vpc_region,
      peering_id=peering_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.aws_network_peering.newAttrs` constructs a new object with attributes and blocks configured for the `aws_network_peering`\nTerraform resource.\n\nUnlike [hcp.aws_network_peering.new](#fn-awsnetworkpeeringnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `peer_account_id` (`string`): The account ID of the peer VPC in AWS.\n  - `peer_vpc_id` (`string`): The ID of the peer VPC in AWS.\n  - `peer_vpc_region` (`string`): The region of the peer VPC in AWS.\n  - `peering_id` (`string`): The ID of the network peering.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.aws_network_peering.timeouts.new](#fn-awsnetworkpeeringtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `aws_network_peering` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hvn_id,
    peer_account_id,
    peer_vpc_id,
    peer_vpc_region,
    peering_id,
    timeouts=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    peer_account_id: peer_account_id,
    peer_vpc_id: peer_vpc_id,
    peer_vpc_region: peer_vpc_region,
    peering_id: peering_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.aws_network_peering.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withHvnId':: d.fn(help='`hcp.aws_network_peering.withHvnId` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withPeerAccountId':: d.fn(help='`hcp.aws_network_peering.withPeerAccountId` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the peer_account_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `peer_account_id` field.\n', args=[]),
  withPeerAccountId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peer_account_id: value,
        },
      },
    },
  },
  '#withPeerVpcId':: d.fn(help='`hcp.aws_network_peering.withPeerVpcId` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the peer_vpc_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `peer_vpc_id` field.\n', args=[]),
  withPeerVpcId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peer_vpc_id: value,
        },
      },
    },
  },
  '#withPeerVpcRegion':: d.fn(help='`hcp.aws_network_peering.withPeerVpcRegion` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the peer_vpc_region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `peer_vpc_region` field.\n', args=[]),
  withPeerVpcRegion(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peer_vpc_region: value,
        },
      },
    },
  },
  '#withPeeringId':: d.fn(help='`hcp.aws_network_peering.withPeeringId` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the peering_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `peering_id` field.\n', args=[]),
  withPeeringId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.aws_network_peering.withTimeouts` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.aws_network_peering.withTimeoutsMixin` constructs a mixin object that can be merged into the `aws_network_peering`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.aws_network_peering.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
