local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  audit_log_config:: {
    new(
      datadog_api_key=null,
      datadog_region=null,
      grafana_endpoint=null,
      grafana_password=null,
      grafana_user=null,
      splunk_hecendpoint=null,
      splunk_token=null
    ):: std.prune(a={
      datadog_api_key: datadog_api_key,
      datadog_region: datadog_region,
      grafana_endpoint: grafana_endpoint,
      grafana_password: grafana_password,
      grafana_user: grafana_user,
      splunk_hecendpoint: splunk_hecendpoint,
      splunk_token: splunk_token,
    }),
  },
  major_version_upgrade_config:: {
    new(
      upgrade_type,
      maintenance_window_day=null,
      maintenance_window_time=null
    ):: std.prune(a={
      maintenance_window_day: maintenance_window_day,
      maintenance_window_time: maintenance_window_time,
      upgrade_type: upgrade_type,
    }),
  },
  metrics_config:: {
    new(
      datadog_api_key=null,
      datadog_region=null,
      grafana_endpoint=null,
      grafana_password=null,
      grafana_user=null,
      splunk_hecendpoint=null,
      splunk_token=null
    ):: std.prune(a={
      datadog_api_key: datadog_api_key,
      datadog_region: datadog_region,
      grafana_endpoint: grafana_endpoint,
      grafana_password: grafana_password,
      grafana_user: grafana_user,
      splunk_hecendpoint: splunk_hecendpoint,
      splunk_token: splunk_token,
    }),
  },
  new(
    resourceLabel,
    cluster_id,
    hvn_id,
    audit_log_config=null,
    major_version_upgrade_config=null,
    metrics_config=null,
    min_vault_version=null,
    paths_filter=null,
    primary_link=null,
    public_endpoint=null,
    tier=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_vault_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      audit_log_config=audit_log_config,
      cluster_id=cluster_id,
      hvn_id=hvn_id,
      major_version_upgrade_config=major_version_upgrade_config,
      metrics_config=metrics_config,
      min_vault_version=min_vault_version,
      paths_filter=paths_filter,
      primary_link=primary_link,
      public_endpoint=public_endpoint,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster_id,
    hvn_id,
    audit_log_config=null,
    major_version_upgrade_config=null,
    metrics_config=null,
    min_vault_version=null,
    paths_filter=null,
    primary_link=null,
    public_endpoint=null,
    tier=null,
    timeouts=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    cluster_id: cluster_id,
    hvn_id: hvn_id,
    major_version_upgrade_config: major_version_upgrade_config,
    metrics_config: metrics_config,
    min_vault_version: min_vault_version,
    paths_filter: paths_filter,
    primary_link: primary_link,
    public_endpoint: public_endpoint,
    tier: tier,
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
  withAuditLogConfig(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  withAuditLogConfigMixin(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withClusterId(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  withMajorVersionUpgradeConfig(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          major_version_upgrade_config: value,
        },
      },
    },
  },
  withMajorVersionUpgradeConfigMixin(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          major_version_upgrade_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMetricsConfig(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          metrics_config: value,
        },
      },
    },
  },
  withMetricsConfigMixin(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          metrics_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMinVaultVersion(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          min_vault_version: value,
        },
      },
    },
  },
  withPathsFilter(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          paths_filter: value,
        },
      },
    },
  },
  withPrimaryLink(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          primary_link: value,
        },
      },
    },
  },
  withPublicEndpoint(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          public_endpoint: value,
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_vault_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
