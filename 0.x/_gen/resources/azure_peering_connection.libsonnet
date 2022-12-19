local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='azure_peering_connection', url='', help='`azure_peering_connection` represents the `hcp_azure_peering_connection` Terraform resource.\n\nThe Azure peering connection resource allows you to manage a peering connection between an HVN and a peer Azure VNet.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.azure_peering_connection.new` injects a new `hcp_azure_peering_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.azure_peering_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.azure_peering_connection` using the reference:\n\n    $._ref.hcp_azure_peering_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_azure_peering_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).\n  - `peer_resource_group_name` (`string`): The resource group name of the peer VNet in Azure.\n  - `peer_subscription_id` (`string`): The subscription ID of the peer VNet in Azure.\n  - `peer_tenant_id` (`string`): The tenant ID of the peer VNet in Azure.\n  - `peer_vnet_name` (`string`): The name of the peer VNet in Azure.\n  - `peer_vnet_region` (`string`): The region of the peer VNet in Azure.\n  - `peering_id` (`string`): The ID of the peering connection.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.azure_peering_connection.timeouts.new](#fn-azurepeeringconnectiontimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    hvn_link,
    peer_resource_group_name,
    peer_subscription_id,
    peer_tenant_id,
    peer_vnet_name,
    peer_vnet_region,
    peering_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_azure_peering_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      hvn_link=hvn_link,
      peer_resource_group_name=peer_resource_group_name,
      peer_subscription_id=peer_subscription_id,
      peer_tenant_id=peer_tenant_id,
      peer_vnet_name=peer_vnet_name,
      peer_vnet_region=peer_vnet_region,
      peering_id=peering_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.azure_peering_connection.newAttrs` constructs a new object with attributes and blocks configured for the `azure_peering_connection`\nTerraform resource.\n\nUnlike [hcp.azure_peering_connection.new](#fn-azurepeeringconnectionnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hvn_link` (`string`): The `self_link` of the HashiCorp Virtual Network (HVN).\n  - `peer_resource_group_name` (`string`): The resource group name of the peer VNet in Azure.\n  - `peer_subscription_id` (`string`): The subscription ID of the peer VNet in Azure.\n  - `peer_tenant_id` (`string`): The tenant ID of the peer VNet in Azure.\n  - `peer_vnet_name` (`string`): The name of the peer VNet in Azure.\n  - `peer_vnet_region` (`string`): The region of the peer VNet in Azure.\n  - `peering_id` (`string`): The ID of the peering connection.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.azure_peering_connection.timeouts.new](#fn-azurepeeringconnectiontimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `azure_peering_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hvn_link,
    peer_resource_group_name,
    peer_subscription_id,
    peer_tenant_id,
    peer_vnet_name,
    peer_vnet_region,
    peering_id,
    timeouts=null
  ):: std.prune(a={
    hvn_link: hvn_link,
    peer_resource_group_name: peer_resource_group_name,
    peer_subscription_id: peer_subscription_id,
    peer_tenant_id: peer_tenant_id,
    peer_vnet_name: peer_vnet_name,
    peer_vnet_region: peer_vnet_region,
    peering_id: peering_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.azure_peering_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withHvnLink':: d.fn(help='`hcp.string.withHvnLink` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_link field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_link` field.\n', args=[]),
  withHvnLink(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  '#withPeerResourceGroupName':: d.fn(help='`hcp.string.withPeerResourceGroupName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_resource_group_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_resource_group_name` field.\n', args=[]),
  withPeerResourceGroupName(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_resource_group_name: value,
        },
      },
    },
  },
  '#withPeerSubscriptionId':: d.fn(help='`hcp.string.withPeerSubscriptionId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_subscription_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_subscription_id` field.\n', args=[]),
  withPeerSubscriptionId(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_subscription_id: value,
        },
      },
    },
  },
  '#withPeerTenantId':: d.fn(help='`hcp.string.withPeerTenantId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_tenant_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_tenant_id` field.\n', args=[]),
  withPeerTenantId(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_tenant_id: value,
        },
      },
    },
  },
  '#withPeerVnetName':: d.fn(help='`hcp.string.withPeerVnetName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_vnet_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_vnet_name` field.\n', args=[]),
  withPeerVnetName(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_vnet_name: value,
        },
      },
    },
  },
  '#withPeerVnetRegion':: d.fn(help='`hcp.string.withPeerVnetRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_vnet_region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_vnet_region` field.\n', args=[]),
  withPeerVnetRegion(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_vnet_region: value,
        },
      },
    },
  },
  '#withPeeringId':: d.fn(help='`hcp.string.withPeeringId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peering_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peering_id` field.\n', args=[]),
  withPeeringId(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
