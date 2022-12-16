local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  audit_log_config:: {
    new(

    ):: std.prune(a={}),
  },
  metrics_config:: {
    new(

    ):: std.prune(a={}),
  },
  new(
    dataSrcLabel,
    cluster_id,
    audit_log_config=null,
    metrics_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_vault_cluster',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      audit_log_config=audit_log_config,
      cluster_id=cluster_id,
      metrics_config=metrics_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    audit_log_config=null,
    metrics_config=null,
    timeouts=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    cluster_id: cluster_id,
    metrics_config: metrics_config,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  withAuditLogConfig(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  withAuditLogConfigMixin(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClusterId(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withMetricsConfig(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          metrics_config: value,
        },
      },
    },
  },
  withMetricsConfigMixin(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          metrics_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(dataSrcLabel, value):: {
    data+: {
      hcp_vault_cluster+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
