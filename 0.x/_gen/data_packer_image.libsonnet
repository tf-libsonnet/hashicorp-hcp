local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    bucket_name,
    cloud_provider,
    region,
    channel=null,
    component_type=null,
    iteration_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_packer_image',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      channel=channel,
      cloud_provider=cloud_provider,
      component_type=component_type,
      iteration_id=iteration_id,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket_name,
    cloud_provider,
    region,
    channel=null,
    component_type=null,
    iteration_id=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel: channel,
    cloud_provider: cloud_provider,
    component_type: component_type,
    iteration_id: iteration_id,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withBucketName(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  withChannel(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          channel: value,
        },
      },
    },
  },
  withCloudProvider(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          cloud_provider: value,
        },
      },
    },
  },
  withComponentType(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          component_type: value,
        },
      },
    },
  },
  withIterationId(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          iteration_id: value,
        },
      },
    },
  },
  withRegion(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
