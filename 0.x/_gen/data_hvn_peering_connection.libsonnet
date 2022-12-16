local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    hvn_1,
    hvn_2,
    peering_id,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_hvn_peering_connection',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      hvn_1=hvn_1,
      hvn_2=hvn_2,
      peering_id=peering_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    hvn_1,
    hvn_2,
    peering_id,
    timeouts=null
  ):: std.prune(a={
    hvn_1: hvn_1,
    hvn_2: hvn_2,
    peering_id: peering_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withHvn1(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_peering_connection+: {
        [dataSrcLabel]+: {
          hvn_1: value,
        },
      },
    },
  },
  withHvn2(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_peering_connection+: {
        [dataSrcLabel]+: {
          hvn_2: value,
        },
      },
    },
  },
  withPeeringId(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_peering_connection+: {
        [dataSrcLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_peering_connection+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_peering_connection+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
