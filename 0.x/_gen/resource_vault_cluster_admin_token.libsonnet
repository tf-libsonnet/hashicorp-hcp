local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cluster_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_vault_cluster_admin_token',
    label=resourceLabel,
    attrs=self.newAttrs(cluster_id=cluster_id, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  withClusterId(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster_admin_token+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster_admin_token+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster_admin_token+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
