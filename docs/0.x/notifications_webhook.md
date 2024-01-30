---
permalink: /notifications_webhook/
---

# notifications_webhook

`notifications_webhook` represents the `hcp_notifications_webhook` Terraform resource.

The webhook resource manages a HCP webhook, used to notify external systems about a project resource&#39;s lifecycle events

This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withName()`](#fn-withname)
* [`fn withProjectId()`](#fn-withprojectid)
* [`fn withSubscriptions()`](#fn-withsubscriptions)
* [`fn withSubscriptionsMixin()`](#fn-withsubscriptionsmixin)

## Fields

### fn new

```ts
new()
```


`hcp.notifications_webhook.new` injects a new `hcp_notifications_webhook` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    hcp.notifications_webhook.new('some_id')

You can get the reference to the `id` field of the created `hcp.notifications_webhook` using the reference:

    $._ref.hcp_notifications_webhook.some_id.get('id')

This is the same as directly entering `"${ hcp_notifications_webhook.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `config` (`obj`): The webhook configuration used to deliver event payloads.
  - `description` (`string`): The webhook&#39;s description. Descriptions are useful for helping others understand the purpose of the webhook. When `null`, the `description` field will be omitted from the resulting object.
  - `enabled` (`bool`): Indicates if the webhook should receive payloads for the subscribed events. Defaults to `true`. When `null`, the `enabled` field will be omitted from the resulting object.
  - `name` (`string`): The webhook&#39;s name.
  - `project_id` (`string`): The ID of the project to create the webhook under. If unspecified, the webhook will be created in the project the provider is configured with. When `null`, the `project_id` field will be omitted from the resulting object.
  - `subscriptions` (`list[obj]`): Set of events to subscribe the webhook to all resources or a specific resource in the project. When `null`, the `subscriptions` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`hcp.notifications_webhook.newAttrs` constructs a new object with attributes and blocks configured for the `notifications_webhook`
Terraform resource.

Unlike [hcp.notifications_webhook.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config` (`obj`): The webhook configuration used to deliver event payloads.
  - `description` (`string`): The webhook&#39;s description. Descriptions are useful for helping others understand the purpose of the webhook. When `null`, the `description` field will be omitted from the resulting object.
  - `enabled` (`bool`): Indicates if the webhook should receive payloads for the subscribed events. Defaults to `true`. When `null`, the `enabled` field will be omitted from the resulting object.
  - `name` (`string`): The webhook&#39;s name.
  - `project_id` (`string`): The ID of the project to create the webhook under. If unspecified, the webhook will be created in the project the provider is configured with. When `null`, the `project_id` field will be omitted from the resulting object.
  - `subscriptions` (`list[obj]`): Set of events to subscribe the webhook to all resources or a specific resource in the project. When `null`, the `subscriptions` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notifications_webhook` resource into the root Terraform configuration.


### fn withConfig

```ts
withConfig()
```

`hcp.obj.withConfig` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the config field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`hcp.obj.withConfigMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the config field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [hcp.obj.withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `config` field.


### fn withDescription

```ts
withDescription()
```

`hcp.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnabled

```ts
withEnabled()
```

`hcp.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


### fn withName

```ts
withName()
```

`hcp.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProjectId

```ts
withProjectId()
```

`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project_id` field.


### fn withSubscriptions

```ts
withSubscriptions()
```

`hcp.list[obj].withSubscriptions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subscriptions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subscriptions` field.


### fn withSubscriptionsMixin

```ts
withSubscriptionsMixin()
```

`hcp.list[obj].withSubscriptionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subscriptions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [hcp.list[obj].withSubscriptions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subscriptions` field.
