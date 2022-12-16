local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cluster_id,
    hvn_id,
    tier,
    auto_hvn_to_hvn_peering=null,
    connect_enabled=null,
    datacenter=null,
    min_consul_version=null,
    primary_link=null,
    public_endpoint=null,
    size=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_consul_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_hvn_to_hvn_peering=auto_hvn_to_hvn_peering,
      cluster_id=cluster_id,
      connect_enabled=connect_enabled,
      datacenter=datacenter,
      hvn_id=hvn_id,
      min_consul_version=min_consul_version,
      primary_link=primary_link,
      public_endpoint=public_endpoint,
      size=size,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    hvn_id,
    tier,
    auto_hvn_to_hvn_peering=null,
    connect_enabled=null,
    datacenter=null,
    min_consul_version=null,
    primary_link=null,
    public_endpoint=null,
    size=null,
    timeouts=null
  ):: std.prune(a={
    auto_hvn_to_hvn_peering: auto_hvn_to_hvn_peering,
    cluster_id: cluster_id,
    connect_enabled: connect_enabled,
    datacenter: datacenter,
    hvn_id: hvn_id,
    min_consul_version: min_consul_version,
    primary_link: primary_link,
    public_endpoint: public_endpoint,
    size: size,
    tier: tier,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      default=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      default: default,
      delete: delete,
      update: update,
    }),
  },
  withAutoHvnToHvnPeering(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          auto_hvn_to_hvn_peering: value,
        },
      },
    },
  },
  withClusterId(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withConnectEnabled(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          connect_enabled: value,
        },
      },
    },
  },
  withDatacenter(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          datacenter: value,
        },
      },
    },
  },
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withMinConsulVersion(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          min_consul_version: value,
        },
      },
    },
  },
  withPrimaryLink(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          primary_link: value,
        },
      },
    },
  },
  withPublicEndpoint(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          public_endpoint: value,
        },
      },
    },
  },
  withSize(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
