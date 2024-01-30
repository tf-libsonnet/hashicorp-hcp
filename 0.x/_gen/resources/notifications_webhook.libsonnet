local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='notifications_webhook', url='', help='`notifications_webhook` represents the `hcp_notifications_webhook` Terraform resource.\n\nThe webhook resource manages a HCP webhook, used to notify external systems about a project resource&#39;s lifecycle events\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.notifications_webhook.new` injects a new `hcp_notifications_webhook` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.notifications_webhook.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.notifications_webhook` using the reference:\n\n    $._ref.hcp_notifications_webhook.some_id.get('id')\n\nThis is the same as directly entering `\"${ hcp_notifications_webhook.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `config` (`obj`): The webhook configuration used to deliver event payloads.\n  - `description` (`string`): The webhook\u0026#39;s description. Descriptions are useful for helping others understand the purpose of the webhook. When `null`, the `description` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Indicates if the webhook should receive payloads for the subscribed events. Defaults to `true`. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `name` (`string`): The webhook\u0026#39;s name.\n  - `project_id` (`string`): The ID of the project to create the webhook under. If unspecified, the webhook will be created in the project the provider is configured with. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `subscriptions` (`list[obj]`): Set of events to subscribe the webhook to all resources or a specific resource in the project. When `null`, the `subscriptions` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    config,
    name,
    description=null,
    enabled=null,
    project_id=null,
    subscriptions=null,
    _meta={}
  ):: tf.withResource(
    type='hcp_notifications_webhook',
    label=resourceLabel,
    attrs=self.newAttrs(
      config=config,
      description=description,
      enabled=enabled,
      name=name,
      project_id=project_id,
      subscriptions=subscriptions
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.notifications_webhook.newAttrs` constructs a new object with attributes and blocks configured for the `notifications_webhook`\nTerraform resource.\n\nUnlike [hcp.notifications_webhook.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config` (`obj`): The webhook configuration used to deliver event payloads.\n  - `description` (`string`): The webhook&#39;s description. Descriptions are useful for helping others understand the purpose of the webhook. When `null`, the `description` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Indicates if the webhook should receive payloads for the subscribed events. Defaults to `true`. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `name` (`string`): The webhook&#39;s name.\n  - `project_id` (`string`): The ID of the project to create the webhook under. If unspecified, the webhook will be created in the project the provider is configured with. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `subscriptions` (`list[obj]`): Set of events to subscribe the webhook to all resources or a specific resource in the project. When `null`, the `subscriptions` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notifications_webhook` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    config,
    name,
    description=null,
    enabled=null,
    project_id=null,
    subscriptions=null
  ):: std.prune(a={
    config: config,
    description: description,
    enabled: enabled,
    name: name,
    project_id: project_id,
    subscriptions: subscriptions,
  }),
  '#withConfig':: d.fn(help='`hcp.obj.withConfig` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withConfigMixin':: d.fn(help='`hcp.obj.withConfigMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the config field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `config` field.\n', args=[]),
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          config+: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`hcp.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`hcp.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withSubscriptions':: d.fn(help='`hcp.list[obj].withSubscriptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subscriptions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subscriptions` field.\n', args=[]),
  withSubscriptions(resourceLabel, value): {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          subscriptions: value,
        },
      },
    },
  },
  '#withSubscriptionsMixin':: d.fn(help='`hcp.list[obj].withSubscriptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subscriptions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [hcp.list[obj].withSubscriptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subscriptions` field.\n', args=[]),
  withSubscriptionsMixin(resourceLabel, value):: {
    resource+: {
      hcp_notifications_webhook+: {
        [resourceLabel]+: {
          subscriptions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
