local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='consul_cluster', url='', help='`consul_cluster` represents the `hcp_consul_cluster` Terraform resource.\n\nThe Consul cluster resource allows you to manage an HCP Consul cluster.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  ip_allowlist:: {
    '#new':: d.fn(help='\n`hcp.consul_cluster.ip_allowlist.new` constructs a new object with attributes and blocks configured for the `ip_allowlist`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address` (`string`): IP address range in CIDR notation.\n  - `description` (`string`): Description to help identify source (maximum 255 chars). When `null`, the `description` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ip_allowlist` sub block.\n', args=[]),
    new(
      address,
      description=null
    ):: std.prune(a={
      address: address,
      description: description,
    }),
  },
  '#new':: d.fn(help="\n`hcp.consul_cluster.new` injects a new `hcp_consul_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.consul_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.consul_cluster` using the reference:\n\n    $._ref.hcp_consul_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_consul_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auto_hvn_to_hvn_peering` (`bool`): Enables automatic HVN to HVN peering when creating a secondary cluster in a federation. The alternative to using the auto-accept feature is to create an [`hcp_hvn_peering_connection`](hvn_peering_connection.md) resource that explicitly defines the HVN resources that are allowed to communicate with each other. When `null`, the `auto_hvn_to_hvn_peering` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The ID of the HCP Consul cluster.\n  - `connect_enabled` (`bool`): Denotes the Consul connect feature should be enabled for this cluster.  Default to true. When `null`, the `connect_enabled` field will be omitted from the resulting object.\n  - `datacenter` (`string`): The Consul data center name of the cluster. If not specified, it is defaulted to the value of `cluster_id`. When `null`, the `datacenter` field will be omitted from the resulting object.\n  - `hvn_id` (`string`): The ID of the HVN this HCP Consul cluster is associated to.\n  - `min_consul_version` (`string`): The minimum Consul patch version of the cluster. Allows only the rightmost version component to increment (E.g: `1.13.0` will allow installation of `1.13.2` and `1.13.3` etc., but not `1.14.0`). If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_consul_version` field will be omitted from the resulting object.\n  - `primary_link` (`string`): The `self_link` of the HCP Consul cluster which is the primary in the federation setup with this HCP Consul cluster. If not specified, it is a standalone cluster. When `null`, the `primary_link` field will be omitted from the resulting object.\n  - `project_id` (`string`): \nThe ID of the HCP project where the HCP Consul cluster is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint for the Consul UI. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.\n  - `size` (`string`): The t-shirt size representation of each server VM that this Consul cluster is provisioned with. Valid option for development tier - `x_small`. Valid options for other tiers - `small`, `medium`, `large`. For more details - https://cloud.hashicorp.com/pricing/consul. Upgrading the size of a cluster after creation is allowed. When `null`, the `size` field will be omitted from the resulting object.\n  - `tier` (`string`): The tier that the HCP Consul cluster will be provisioned as.  Only `development`, `standard`, `plus`, and `premium` are available at this time. See [pricing information](https://www.hashicorp.com/products/consul/pricing).\n  - `ip_allowlist` (`list[obj]`): Allowed IPV4 address ranges (CIDRs) for inbound traffic. Each entry must be a unique CIDR. Maximum 3 CIDRS supported at this time. When `null`, the `ip_allowlist` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.ip_allowlist.new](#fn-ip_allowlistnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    hvn_id,
    tier,
    auto_hvn_to_hvn_peering=null,
    connect_enabled=null,
    datacenter=null,
    ip_allowlist=null,
    min_consul_version=null,
    primary_link=null,
    project_id=null,
    public_endpoint=null,
    size=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_consul_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_hvn_to_hvn_peering=auto_hvn_to_hvn_peering,
      cluster_id=cluster_id,
      connect_enabled=connect_enabled,
      datacenter=datacenter,
      hvn_id=hvn_id,
      ip_allowlist=ip_allowlist,
      min_consul_version=min_consul_version,
      primary_link=primary_link,
      project_id=project_id,
      public_endpoint=public_endpoint,
      size=size,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.consul_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `consul_cluster`\nTerraform resource.\n\nUnlike [hcp.consul_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auto_hvn_to_hvn_peering` (`bool`): Enables automatic HVN to HVN peering when creating a secondary cluster in a federation. The alternative to using the auto-accept feature is to create an [`hcp_hvn_peering_connection`](hvn_peering_connection.md) resource that explicitly defines the HVN resources that are allowed to communicate with each other. When `null`, the `auto_hvn_to_hvn_peering` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The ID of the HCP Consul cluster.\n  - `connect_enabled` (`bool`): Denotes the Consul connect feature should be enabled for this cluster.  Default to true. When `null`, the `connect_enabled` field will be omitted from the resulting object.\n  - `datacenter` (`string`): The Consul data center name of the cluster. If not specified, it is defaulted to the value of `cluster_id`. When `null`, the `datacenter` field will be omitted from the resulting object.\n  - `hvn_id` (`string`): The ID of the HVN this HCP Consul cluster is associated to.\n  - `min_consul_version` (`string`): The minimum Consul patch version of the cluster. Allows only the rightmost version component to increment (E.g: `1.13.0` will allow installation of `1.13.2` and `1.13.3` etc., but not `1.14.0`). If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_consul_version` field will be omitted from the resulting object.\n  - `primary_link` (`string`): The `self_link` of the HCP Consul cluster which is the primary in the federation setup with this HCP Consul cluster. If not specified, it is a standalone cluster. When `null`, the `primary_link` field will be omitted from the resulting object.\n  - `project_id` (`string`): \nThe ID of the HCP project where the HCP Consul cluster is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint for the Consul UI. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.\n  - `size` (`string`): The t-shirt size representation of each server VM that this Consul cluster is provisioned with. Valid option for development tier - `x_small`. Valid options for other tiers - `small`, `medium`, `large`. For more details - https://cloud.hashicorp.com/pricing/consul. Upgrading the size of a cluster after creation is allowed. When `null`, the `size` field will be omitted from the resulting object.\n  - `tier` (`string`): The tier that the HCP Consul cluster will be provisioned as.  Only `development`, `standard`, `plus`, and `premium` are available at this time. See [pricing information](https://www.hashicorp.com/products/consul/pricing).\n  - `ip_allowlist` (`list[obj]`): Allowed IPV4 address ranges (CIDRs) for inbound traffic. Each entry must be a unique CIDR. Maximum 3 CIDRS supported at this time. When `null`, the `ip_allowlist` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.ip_allowlist.new](#fn-ip_allowlistnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `consul_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    hvn_id,
    tier,
    auto_hvn_to_hvn_peering=null,
    connect_enabled=null,
    datacenter=null,
    ip_allowlist=null,
    min_consul_version=null,
    primary_link=null,
    project_id=null,
    public_endpoint=null,
    size=null,
    timeouts=null
  ):: std.prune(a={
    auto_hvn_to_hvn_peering: auto_hvn_to_hvn_peering,
    cluster_id: cluster_id,
    connect_enabled: connect_enabled,
    datacenter: datacenter,
    hvn_id: hvn_id,
    ip_allowlist: ip_allowlist,
    min_consul_version: min_consul_version,
    primary_link: primary_link,
    project_id: project_id,
    public_endpoint: public_endpoint,
    size: size,
    tier: tier,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.consul_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoHvnToHvnPeering':: d.fn(help='`hcp.bool.withAutoHvnToHvnPeering` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the auto_hvn_to_hvn_peering field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `auto_hvn_to_hvn_peering` field.\n', args=[]),
  withAutoHvnToHvnPeering(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          auto_hvn_to_hvn_peering: value,
        },
      },
    },
  },
  '#withClusterId':: d.fn(help='`hcp.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withConnectEnabled':: d.fn(help='`hcp.bool.withConnectEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the connect_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `connect_enabled` field.\n', args=[]),
  withConnectEnabled(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          connect_enabled: value,
        },
      },
    },
  },
  '#withDatacenter':: d.fn(help='`hcp.string.withDatacenter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the datacenter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `datacenter` field.\n', args=[]),
  withDatacenter(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          datacenter: value,
        },
      },
    },
  },
  '#withHvnId':: d.fn(help='`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withIpAllowlist':: d.fn(help='`hcp.list[obj].withIpAllowlist` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ip_allowlist field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [hcp.list[obj].withIpAllowlistMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ip_allowlist` field.\n', args=[]),
  withIpAllowlist(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          ip_allowlist: value,
        },
      },
    },
  },
  '#withIpAllowlistMixin':: d.fn(help='`hcp.list[obj].withIpAllowlistMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ip_allowlist field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withIpAllowlist](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ip_allowlist` field.\n', args=[]),
  withIpAllowlistMixin(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          ip_allowlist+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMinConsulVersion':: d.fn(help='`hcp.string.withMinConsulVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the min_consul_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `min_consul_version` field.\n', args=[]),
  withMinConsulVersion(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          min_consul_version: value,
        },
      },
    },
  },
  '#withPrimaryLink':: d.fn(help='`hcp.string.withPrimaryLink` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the primary_link field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `primary_link` field.\n', args=[]),
  withPrimaryLink(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          primary_link: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withPublicEndpoint':: d.fn(help='`hcp.bool.withPublicEndpoint` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the public_endpoint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `public_endpoint` field.\n', args=[]),
  withPublicEndpoint(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          public_endpoint: value,
        },
      },
    },
  },
  '#withSize':: d.fn(help='`hcp.string.withSize` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `size` field.\n', args=[]),
  withSize(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`hcp.string.withTier` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
