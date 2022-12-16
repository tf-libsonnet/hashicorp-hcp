local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    hvn_id,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_hvn',
    label=dataSrcLabel,
    attrs=self.newAttrs(hvn_id=hvn_id, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    hvn_id,
    timeouts=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withHvnId(dataSrcLabel, value):: {
    data+: {
      hcp_hvn+: {
        [dataSrcLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_hvn+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_hvn+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
