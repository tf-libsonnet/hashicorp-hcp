local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    hvn_id,
    transit_gateway_attachment_id,
    timeouts=null,
    wait_for_active_state=null,
    _meta={}
  ):: tf.withData(
    type='hcp_aws_transit_gateway_attachment',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      hvn_id=hvn_id,
      timeouts=timeouts,
      transit_gateway_attachment_id=transit_gateway_attachment_id,
      wait_for_active_state=wait_for_active_state
    ),
    _meta=_meta
  ),
  newAttrs(
    hvn_id,
    transit_gateway_attachment_id,
    timeouts=null,
    wait_for_active_state=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    timeouts: timeouts,
    transit_gateway_attachment_id: transit_gateway_attachment_id,
    wait_for_active_state: wait_for_active_state,
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
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransitGatewayAttachmentId(dataSrcLabel, value):: {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          transit_gateway_attachment_id: value,
        },
      },
    },
  },
  withWaitForActiveState(dataSrcLabel, value):: {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          wait_for_active_state: value,
        },
      },
    },
  },
}
