local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    hvn_id,
    resource_share_arn,
    transit_gateway_attachment_id,
    transit_gateway_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_aws_transit_gateway_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      hvn_id=hvn_id,
      resource_share_arn=resource_share_arn,
      timeouts=timeouts,
      transit_gateway_attachment_id=transit_gateway_attachment_id,
      transit_gateway_id=transit_gateway_id
    ),
    _meta=_meta
  ),
  newAttrs(
    hvn_id,
    resource_share_arn,
    transit_gateway_attachment_id,
    transit_gateway_id,
    timeouts=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    resource_share_arn: resource_share_arn,
    timeouts: timeouts,
    transit_gateway_attachment_id: transit_gateway_attachment_id,
    transit_gateway_id: transit_gateway_id,
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
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withResourceShareArn(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          resource_share_arn: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransitGatewayAttachmentId(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          transit_gateway_attachment_id: value,
        },
      },
    },
  },
  withTransitGatewayId(resourceLabel, value):: {
    resource+: {
      hcp_aws_transit_gateway_attachment+: {
        [resourceLabel]+: {
          transit_gateway_id: value,
        },
      },
    },
  },
}
