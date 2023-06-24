local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='boundary_cluster', url='', help='`boundary_cluster` represents the `hcp_boundary_cluster` Terraform resource.\n\nThis resource allows you to manage an HCP Boundary cluster\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  maintenance_window_config:: {
    '#new':: d.fn(help='\n`hcp.boundary_cluster.maintenance_window_config.new` constructs a new object with attributes and blocks configured for the `maintenance_window_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`string`): The maintenance day of the week for scheduled upgrades. Valid options for maintenance window day - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY` When `null`, the `day` field will be omitted from the resulting object.\n  - `end` (`number`): The end time which upgrades can be performed. Uses 24H clock and must be in UTC time zone. Valid options include - 1 to 24 (inclusive) When `null`, the `end` field will be omitted from the resulting object.\n  - `start` (`number`): The start time which upgrades can be performed. Uses 24H clock and must be in UTC time zone. Valid options include - 0 to 23 (inclusive) When `null`, the `start` field will be omitted from the resulting object.\n  - `upgrade_type` (`string`): The upgrade type for the cluster. Valid options for upgrade type - `AUTOMATIC`, `SCHEDULED` When `null`, the `upgrade_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_window_config` sub block.\n', args=[]),
    new(
      day=null,
      end=null,
      start=null,
      upgrade_type=null
    ):: std.prune(a={
      day: day,
      end: end,
      start: start,
      upgrade_type: upgrade_type,
    }),
  },
  '#new':: d.fn(help="\n`hcp.boundary_cluster.new` injects a new `hcp_boundary_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.boundary_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.boundary_cluster` using the reference:\n\n    $._ref.hcp_boundary_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_boundary_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the Boundary cluster\n  - `password` (`string`): The password of the initial admin user. This must be at least 8 characters in length. Note that this may show up in logs, and it will be stored in the state file.\n  - `project_id` (`string`): \nThe ID of the HCP project where the Boundary cluster is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `username` (`string`): The username of the initial admin user. This must be at least 3 characters in length, alphanumeric, hyphen, or period.\n  - `maintenance_window_config` (`list[obj]`): The maintenance window configuration for when cluster upgrades can take place. When `null`, the `maintenance_window_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.maintenance_window_config.new](#fn-maintenance_window_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    password,
    username,
    maintenance_window_config=null,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_boundary_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster_id=cluster_id,
      maintenance_window_config=maintenance_window_config,
      password=password,
      project_id=project_id,
      timeouts=timeouts,
      username=username
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.boundary_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `boundary_cluster`\nTerraform resource.\n\nUnlike [hcp.boundary_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the Boundary cluster\n  - `password` (`string`): The password of the initial admin user. This must be at least 8 characters in length. Note that this may show up in logs, and it will be stored in the state file.\n  - `project_id` (`string`): \nThe ID of the HCP project where the Boundary cluster is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `username` (`string`): The username of the initial admin user. This must be at least 3 characters in length, alphanumeric, hyphen, or period.\n  - `maintenance_window_config` (`list[obj]`): The maintenance window configuration for when cluster upgrades can take place. When `null`, the `maintenance_window_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.maintenance_window_config.new](#fn-maintenance_window_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.boundary_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `boundary_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    password,
    username,
    maintenance_window_config=null,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    cluster_id: cluster_id,
    maintenance_window_config: maintenance_window_config,
    password: password,
    project_id: project_id,
    timeouts: timeouts,
    username: username,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.boundary_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withClusterId':: d.fn(help='`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withMaintenanceWindowConfig':: d.fn(help='`hcp.list[obj].withMaintenanceWindowConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withMaintenanceWindowConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window_config` field.\n', args=[]),
  withMaintenanceWindowConfig(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          maintenance_window_config: value,
        },
      },
    },
  },
  '#withMaintenanceWindowConfigMixin':: d.fn(help='`hcp.list[obj].withMaintenanceWindowConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_window_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withMaintenanceWindowConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_window_config` field.\n', args=[]),
  withMaintenanceWindowConfigMixin(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          maintenance_window_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPassword':: d.fn(help='`hcp.string.withPassword` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the password field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `password` field.\n', args=[]),
  withPassword(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          password: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUsername':: d.fn(help='`hcp.string.withUsername` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the username field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `username` field.\n', args=[]),
  withUsername(resourceLabel, value): {
    resource+: {
      hcp_boundary_cluster+: {
        [resourceLabel]+: {
          username: value,
        },
      },
    },
  },
}
