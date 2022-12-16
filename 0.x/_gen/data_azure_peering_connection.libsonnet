local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    hvn_link,
    peering_id,
    timeouts=null,
    wait_for_active_state=null,
    _meta={}
  ):: tf.withData(
    type='hcp_azure_peering_connection',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      hvn_link=hvn_link,
      peering_id=peering_id,
      timeouts=timeouts,
      wait_for_active_state=wait_for_active_state
    ),
    _meta=_meta
  ),
  newAttrs(
    hvn_link,
    peering_id,
    timeouts=null,
    wait_for_active_state=null
  ):: std.prune(a={
    hvn_link: hvn_link,
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
  withHvnLink(dataSrcLabel, value):: {
    data+: {
      hcp_azure_peering_connection+: {
        [dataSrcLabel]+: {
          hvn_link: value,
        },
      },
    },
  },
  withPeeringId(dataSrcLabel, value):: {
    data+: {
      hcp_azure_peering_connection+: {
        [dataSrcLabel]+: {
          peering_id: value,
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_azure_peering_connection+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_azure_peering_connection+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWaitForActiveState(dataSrcLabel, value):: {
    data+: {
      hcp_azure_peering_connection+: {
        [dataSrcLabel]+: {
          wait_for_active_state: value,
        },
      },
    },
  },
}
