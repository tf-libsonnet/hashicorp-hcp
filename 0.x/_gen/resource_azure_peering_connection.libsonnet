local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  withHvnLink(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  withPeerResourceGroupName(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_resource_group_name: value,
        },
      },
    },
  },
  withPeerSubscriptionId(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_subscription_id: value,
        },
      },
    },
  },
  withPeerTenantId(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_tenant_id: value,
        },
      },
    },
  },
  withPeerVnetName(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_vnet_name: value,
        },
      },
    },
  },
  withPeerVnetRegion(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peer_vnet_region: value,
        },
      },
    },
  },
  withPeeringId(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_azure_peering_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
