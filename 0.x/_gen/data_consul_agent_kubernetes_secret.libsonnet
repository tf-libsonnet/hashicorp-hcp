local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    cluster_id,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_consul_agent_kubernetes_secret',
    label=dataSrcLabel,
    attrs=self.newAttrs(cluster_id=cluster_id, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
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
      hcp_consul_agent_kubernetes_secret+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_kubernetes_secret+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_consul_agent_kubernetes_secret+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
