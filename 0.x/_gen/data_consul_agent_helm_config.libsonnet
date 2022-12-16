local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    cluster_id,
    kubernetes_endpoint,
    expose_gossip_ports=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_consul_agent_helm_config',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      expose_gossip_ports=expose_gossip_ports,
      kubernetes_endpoint=kubernetes_endpoint,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    kubernetes_endpoint,
    expose_gossip_ports=null,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    expose_gossip_ports: expose_gossip_ports,
    kubernetes_endpoint: kubernetes_endpoint,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withClusterId(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_helm_config+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withExposeGossipPorts(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_helm_config+: {
        [dataSrcLabel]+: {
          expose_gossip_ports: value,
        },
      },
    },
  },
  withKubernetesEndpoint(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_helm_config+: {
        [dataSrcLabel]+: {
          kubernetes_endpoint: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_helm_config+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_helm_config+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
