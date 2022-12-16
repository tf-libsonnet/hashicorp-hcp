local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cloud_provider,
    hvn_id,
    region,
    cidr_block=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_hvn',
    label=resourceLabel,
    attrs=self.newAttrs(
      cidr_block=cidr_block,
      cloud_provider=cloud_provider,
      hvn_id=hvn_id,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cloud_provider,
    hvn_id,
    region,
    cidr_block=null,
    timeouts=null
  ):: std.prune(a={
    cidr_block: cidr_block,
    cloud_provider: cloud_provider,
    hvn_id: hvn_id,
    region: region,
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
  withCidrBlock(resourceLabel, value):: {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          cidr_block: value,
        },
      },
    },
  },
  withCloudProvider(resourceLabel, value):: {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          cloud_provider: value,
        },
      },
    },
  },
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_hvn+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
