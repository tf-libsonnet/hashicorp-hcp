local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_consul_versions',
    label=dataSrcLabel,
    attrs=self.newAttrs(timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    timeouts=null
  ):: std.prune(a={
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_consul_versions+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_consul_versions+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
