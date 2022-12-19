---
permalink: /data/consul_agent_helm_config/
---

# data.consul_agent_helm_config

`consul_agent_helm_config` represents the `hcp_consul_agent_helm_config` Terraform data source.

The Consul agent Helm config data source provides Helm values for a Consul agent running in Kubernetes.

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withExposeGossipPorts()`](#fn-withexposegossipports)
* [`fn withKubernetesEndpoint()`](#fn-withkubernetesendpoint)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`hcp.data.consul_agent_helm_config.new` injects a new `data_hcp_consul_agent_helm_config` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.data.consul_agent_helm_config.new('some_id')

You can get the reference to the `id` field of the created `hcp.data.consul_agent_helm_config` using the reference:

    $._ref.data_hcp_consul_agent_helm_config.some_id.get('id')

This is the same as directly entering `"${ data_hcp_consul_agent_helm_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): The ID of the HCP Consul cluster.
  - `expose_gossip_ports` (`bool`): Denotes that the gossip ports should be exposed. When `null`, the `expose_gossip_ports` field will be omitted from the resulting object.
  - `kubernetes_endpoint` (`string`): The FQDN for the Kubernetes API.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.consul_agent_helm_config.timeouts.new](#fn-consulagenthelmconfigtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.data.consul_agent_helm_config.newAttrs` constructs a new object with attributes and blocks configured for the `consul_agent_helm_config`
Terraform data source.

Unlike [hcp.data.consul_agent_helm_config.new](#fn-consulagenthelmconfignew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): The ID of the HCP Consul cluster.
  - `expose_gossip_ports` (`bool`): Denotes that the gossip ports should be exposed. When `null`, the `expose_gossip_ports` field will be omitted from the resulting object.
  - `kubernetes_endpoint` (`string`): The FQDN for the Kubernetes API.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.consul_agent_helm_config.timeouts.new](#fn-consulagenthelmconfigtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `consul_agent_helm_config` data source into the root Terraform configuration.


### fn withClusterId

```ts
withClusterId()
```

`hcp.consul_agent_helm_config.withClusterId` constructs a mixin object that can be merged into the `consul_agent_helm_config`
Terraform data source block to set or update the cluster_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `cluster_id` field.


### fn withExposeGossipPorts

```ts
withExposeGossipPorts()
```

`hcp.consul_agent_helm_config.withExposeGossipPorts` constructs a mixin object that can be merged into the `consul_agent_helm_config`
Terraform data source block to set or update the expose_gossip_ports field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `expose_gossip_ports` field.


### fn withKubernetesEndpoint

```ts
withKubernetesEndpoint()
```

`hcp.consul_agent_helm_config.withKubernetesEndpoint` constructs a mixin object that can be merged into the `consul_agent_helm_config`
Terraform data source block to set or update the kubernetes_endpoint field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `kubernetes_endpoint` field.


### fn withTimeouts

```ts
withTimeouts()
```

`hcp.consul_agent_helm_config.withTimeouts` constructs a mixin object that can be merged into the `consul_agent_helm_config`
Terraform data source block to set or update the timeouts field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`hcp.consul_agent_helm_config.withTimeoutsMixin` constructs a mixin object that can be merged into the `consul_agent_helm_config`
Terraform data source block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.consul_agent_helm_config.withTimeouts](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`hcp.consul_agent_helm_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
