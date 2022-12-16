local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    hvn_link,
    hvn_route_id,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_hvn_route',
    label=dataSrcLabel,
    attrs=self.newAttrs(hvn_link=hvn_link, hvn_route_id=hvn_route_id, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    hvn_link,
    hvn_route_id,
    timeouts=null
  ):: std.prune(a={
    hvn_link: hvn_link,
    hvn_route_id: hvn_route_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withHvnLink(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  withHvnRouteId(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          hvn_route_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_hvn_route+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
