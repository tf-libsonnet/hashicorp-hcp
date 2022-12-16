local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withPeerAccountId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peer_account_id: value,
        },
      },
    },
  },
  withPeerVpcId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peer_vpc_id: value,
        },
      },
    },
  },
  withPeerVpcRegion(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peer_vpc_region: value,
        },
      },
    },
  },
  withPeeringId(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_aws_network_peering+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
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
