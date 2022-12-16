local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    destination_cidr,
    hvn_link,
    hvn_route_id,
    target_link,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_hvn_route',
    label=resourceLabel,
    attrs=self.newAttrs(
      destination_cidr=destination_cidr,
      hvn_link=hvn_link,
      hvn_route_id=hvn_route_id,
      target_link=target_link,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    destination_cidr,
    hvn_link,
    hvn_route_id,
    target_link,
    timeouts=null
  ):: std.prune(a={
    destination_cidr: destination_cidr,
    hvn_link: hvn_link,
    hvn_route_id: hvn_route_id,
    target_link: target_link,
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
  withDestinationCidr(resourceLabel, value):: {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          destination_cidr: value,
        },
      },
    },
  },
  withHvnLink(resourceLabel, value):: {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  withHvnRouteId(resourceLabel, value):: {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          hvn_route_id: value,
        },
      },
    },
  },
  withTargetLink(resourceLabel, value):: {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          target_link: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_hvn_route+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
