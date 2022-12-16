local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    hvn_id,
    peering_id,
    timeouts=null,
    wait_for_active_state=null,
    _meta={}
  ):: tf.withData(
    type='hcp_aws_network_peering',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      hvn_id=hvn_id,
      peering_id=peering_id,
      timeouts=timeouts,
      wait_for_active_state=wait_for_active_state
    ),
    _meta=_meta
  ),
  newAttrs(
    hvn_id,
    peering_id,
    timeouts=null,
    wait_for_active_state=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    peering_id: peering_id,
    timeouts: timeouts,
    wait_for_active_state: wait_for_active_state,
  }),
  timeouts:: {
    new(
      read=null
    ):: std.prune(a={
      read: read,
    }),
  },
  withHvnId(dataSrcLabel, value):: {
    data+: {
      hcp_aws_network_peering+: {
        [dataSrcLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withPeeringId(dataSrcLabel, value):: {
    data+: {
      hcp_aws_network_peering+: {
        [dataSrcLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_aws_network_peering+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_aws_network_peering+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWaitForActiveState(dataSrcLabel, value):: {
    data+: {
      hcp_aws_network_peering+: {
        [dataSrcLabel]+: {
          wait_for_active_state: value,
        },
      },
    },
  },
}
