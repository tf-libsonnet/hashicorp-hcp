local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    hvn_1,
    hvn_2,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_hvn_peering_connection',
    label=resourceLabel,
    attrs=self.newAttrs(hvn_1=hvn_1, hvn_2=hvn_2, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    hvn_1,
    hvn_2,
    timeouts=null
  ):: std.prune(a={
    hvn_1: hvn_1,
    hvn_2: hvn_2,
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
  withHvn1(resourceLabel, value):: {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          hvn_1: value,
        },
      },
    },
  },
  withHvn2(resourceLabel, value):: {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          hvn_2: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_hvn_peering_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
