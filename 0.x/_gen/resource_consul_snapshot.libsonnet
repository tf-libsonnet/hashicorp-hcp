local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cluster_id,
    snapshot_name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_consul_snapshot',
    label=resourceLabel,
    attrs=self.newAttrs(cluster_id=cluster_id, snapshot_name=snapshot_name, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    snapshot_name,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    snapshot_name: snapshot_name,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      default=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      default: default,
      delete: delete,
      update: update,
    }),
  },
  withClusterId(resourceLabel, value):: {
    resource+: {
      hcp_consul_snapshot+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withSnapshotName(resourceLabel, value):: {
    resource+: {
      hcp_consul_snapshot+: {
        [resourceLabel]+: {
          snapshot_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_consul_snapshot+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_consul_snapshot+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
