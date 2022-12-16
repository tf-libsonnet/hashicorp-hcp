local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    bucket_name,
    channel,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_packer_image_iteration',
    label=dataSrcLabel,
    attrs=self.newAttrs(bucket_name=bucket_name, channel=channel, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    bucket_name,
    channel,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel: channel,
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
      hcp_packer_image_iteration+: {
        [dataSrcLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  withChannel(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image_iteration+: {
        [dataSrcLabel]+: {
          channel: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image_iteration+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_packer_image_iteration+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
