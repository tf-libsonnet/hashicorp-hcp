local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='consul_cluster', url='', help='`consul_cluster` represents the `hcp_consul_cluster` Terraform resource.\n\nThe Consul cluster resource allows you to manage an HCP Consul cluster.\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.consul_cluster.new` injects a new `hcp_consul_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.consul_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.consul_cluster` using the reference:\n\n    $._ref.hcp_consul_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_consul_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auto_hvn_to_hvn_peering` (`bool`): Enables automatic HVN to HVN peering when creating a secondary cluster in a federation. The alternative to using the auto-accept feature is to create an [`hcp_hvn_peering_connection`](hvn_peering_connection.md) resource that explicitly defines the HVN resources that are allowed to communicate with each other. When `null`, the `auto_hvn_to_hvn_peering` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The ID of the HCP Consul cluster.\n  - `connect_enabled` (`bool`): Denotes the Consul connect feature should be enabled for this cluster.  Default to true. When `null`, the `connect_enabled` field will be omitted from the resulting object.\n  - `datacenter` (`string`): The Consul data center name of the cluster. If not specified, it is defaulted to the value of `cluster_id`. When `null`, the `datacenter` field will be omitted from the resulting object.\n  - `hvn_id` (`string`): The ID of the HVN this HCP Consul cluster is associated to.\n  - `min_consul_version` (`string`): The minimum Consul patch version of the cluster. Allows only the rightmost version component to increment (E.g: `1.13.0` will allow installation of `1.13.2` and `1.13.3` etc., but not `1.14.0`). If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_consul_version` field will be omitted from the resulting object.\n  - `primary_link` (`string`): The `self_link` of the HCP Consul cluster which is the primary in the federation setup with this HCP Consul cluster. If not specified, it is a standalone cluster. When `null`, the `primary_link` field will be omitted from the resulting object.\n  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint for the Consul UI. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.\n  - `size` (`string`): The t-shirt size representation of each server VM that this Consul cluster is provisioned with. Valid option for development tier - `x_small`. Valid options for other tiers - `small`, `medium`, `large`. For more details - https://cloud.hashicorp.com/pricing/consul. Upgrading the size of a cluster after creation is allowed. When `null`, the `size` field will be omitted from the resulting object.\n  - `tier` (`string`): The tier that the HCP Consul cluster will be provisioned as.  Only `development`, `standard` and `plus` are available at this time. See [pricing information](https://cloud.hashicorp.com/pricing/consul).\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.timeouts.new](#fn-consulclustertimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    hvn_id,
    tier,
    auto_hvn_to_hvn_peering=null,
    connect_enabled=null,
    datacenter=null,
    min_consul_version=null,
    primary_link=null,
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
      min_consul_version=min_consul_version,
      primary_link=primary_link,
      public_endpoint=public_endpoint,
      size=size,
      tier=tier,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.consul_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `consul_cluster`\nTerraform resource.\n\nUnlike [hcp.consul_cluster.new](#fn-consulclusternew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auto_hvn_to_hvn_peering` (`bool`): Enables automatic HVN to HVN peering when creating a secondary cluster in a federation. The alternative to using the auto-accept feature is to create an [`hcp_hvn_peering_connection`](hvn_peering_connection.md) resource that explicitly defines the HVN resources that are allowed to communicate with each other. When `null`, the `auto_hvn_to_hvn_peering` field will be omitted from the resulting object.\n  - `cluster_id` (`string`): The ID of the HCP Consul cluster.\n  - `connect_enabled` (`bool`): Denotes the Consul connect feature should be enabled for this cluster.  Default to true. When `null`, the `connect_enabled` field will be omitted from the resulting object.\n  - `datacenter` (`string`): The Consul data center name of the cluster. If not specified, it is defaulted to the value of `cluster_id`. When `null`, the `datacenter` field will be omitted from the resulting object.\n  - `hvn_id` (`string`): The ID of the HVN this HCP Consul cluster is associated to.\n  - `min_consul_version` (`string`): The minimum Consul patch version of the cluster. Allows only the rightmost version component to increment (E.g: `1.13.0` will allow installation of `1.13.2` and `1.13.3` etc., but not `1.14.0`). If not specified, it is defaulted to the version that is currently recommended by HCP. When `null`, the `min_consul_version` field will be omitted from the resulting object.\n  - `primary_link` (`string`): The `self_link` of the HCP Consul cluster which is the primary in the federation setup with this HCP Consul cluster. If not specified, it is a standalone cluster. When `null`, the `primary_link` field will be omitted from the resulting object.\n  - `public_endpoint` (`bool`): Denotes that the cluster has a public endpoint for the Consul UI. Defaults to false. When `null`, the `public_endpoint` field will be omitted from the resulting object.\n  - `size` (`string`): The t-shirt size representation of each server VM that this Consul cluster is provisioned with. Valid option for development tier - `x_small`. Valid options for other tiers - `small`, `medium`, `large`. For more details - https://cloud.hashicorp.com/pricing/consul. Upgrading the size of a cluster after creation is allowed. When `null`, the `size` field will be omitted from the resulting object.\n  - `tier` (`string`): The tier that the HCP Consul cluster will be provisioned as.  Only `development`, `standard` and `plus` are available at this time. See [pricing information](https://cloud.hashicorp.com/pricing/consul).\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.consul_cluster.timeouts.new](#fn-consulclustertimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `consul_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    hvn_id,
    tier,
    auto_hvn_to_hvn_peering=null,
    connect_enabled=null,
    datacenter=null,
    min_consul_version=null,
    primary_link=null,
    public_endpoint=null,
    size=null,
    timeouts=null
  ):: std.prune(a={
    auto_hvn_to_hvn_peering: auto_hvn_to_hvn_peering,
    cluster_id: cluster_id,
    connect_enabled: connect_enabled,
    datacenter: datacenter,
    hvn_id: hvn_id,
    min_consul_version: min_consul_version,
    primary_link: primary_link,
    public_endpoint: public_endpoint,
    size: size,
    tier: tier,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.consul_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoHvnToHvnPeering':: d.fn(help='`hcp.consul_cluster.withAutoHvnToHvnPeering` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the auto_hvn_to_hvn_peering field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `auto_hvn_to_hvn_peering` field.\n', args=[]),
  withAutoHvnToHvnPeering(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          auto_hvn_to_hvn_peering: value,
        },
      },
    },
  },
  '#withClusterId':: d.fn(help='`hcp.consul_cluster.withClusterId` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withConnectEnabled':: d.fn(help='`hcp.consul_cluster.withConnectEnabled` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the connect_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `connect_enabled` field.\n', args=[]),
  withConnectEnabled(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          connect_enabled: value,
        },
      },
    },
  },
  '#withDatacenter':: d.fn(help='`hcp.consul_cluster.withDatacenter` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the datacenter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `datacenter` field.\n', args=[]),
  withDatacenter(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          datacenter: value,
        },
      },
    },
  },
  '#withHvnId':: d.fn(help='`hcp.consul_cluster.withHvnId` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withMinConsulVersion':: d.fn(help='`hcp.consul_cluster.withMinConsulVersion` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the min_consul_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `min_consul_version` field.\n', args=[]),
  withMinConsulVersion(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          min_consul_version: value,
        },
      },
    },
  },
  '#withPrimaryLink':: d.fn(help='`hcp.consul_cluster.withPrimaryLink` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the primary_link field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `primary_link` field.\n', args=[]),
  withPrimaryLink(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          primary_link: value,
        },
      },
    },
  },
  '#withPublicEndpoint':: d.fn(help='`hcp.consul_cluster.withPublicEndpoint` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the public_endpoint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `public_endpoint` field.\n', args=[]),
  withPublicEndpoint(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          public_endpoint: value,
        },
      },
    },
  },
  '#withSize':: d.fn(help='`hcp.consul_cluster.withSize` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `size` field.\n', args=[]),
  withSize(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  '#withTier':: d.fn(help='`hcp.consul_cluster.withTier` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the tier field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `tier` field.\n', args=[]),
  withTier(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.consul_cluster.withTimeouts` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.consul_cluster.withTimeoutsMixin` constructs a mixin object that can be merged into the `consul_cluster`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.consul_cluster.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      hcp_consul_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
