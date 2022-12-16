local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cluster_id,
    password,
    username,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_boundary_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      password=password,
      timeouts=timeouts,
      username=username
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    password,
    username,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    password: password,
    timeouts: timeouts,
    username: username,
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
  withClusterId(resourceLabel, value):: {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withPassword(resourceLabel, value):: {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUsername(resourceLabel, value):: {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          username: value,
        },
      },
    },
  },
}
