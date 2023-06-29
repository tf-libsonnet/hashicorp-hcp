local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='packer_image', url='', help='`packer_image` represents the `hcp_packer_image` Terraform data source.\n\nThe Packer Image data source iteration gets the most recent iteration (or build) of an image, given an iteration id or a channel.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.packer_image.new` injects a new `data_hcp_packer_image` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.packer_image.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.packer_image` using the reference:\n\n    $._ref.data_hcp_packer_image.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_packer_image.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The slug of the HCP Packer Registry bucket to pull from.\n  - `channel` (`string`): The channel that points to the version of the image being retrieved. Either this or `iteration_id` must be specified. Note: will incur a billable request When `null`, the `channel` field will be omitted from the resulting object.\n  - `cloud_provider` (`string`): Name of the cloud provider this image is stored-in.\n  - `component_type` (`string`): Name of the builder that built this image. Ex: `amazon-ebs.example`. When `null`, the `component_type` field will be omitted from the resulting object.\n  - `iteration_id` (`string`): The iteration from which to get the image. Either this or `channel` must be specified. When `null`, the `iteration_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): \nThe ID of the HCP project where the HCP Packer Registry image is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `region` (`string`): Region this image is stored in, if any.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting data source block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.packer_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    bucket_name,
    cloud_provider,
    region,
    channel=null,
    component_type=null,
    iteration_id=null,
    project_id=null,
    timeouts=null,
    _meta={}
  ):: tf.withData(
    type='hcp_packer_image',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      channel=channel,
      cloud_provider=cloud_provider,
      component_type=component_type,
      iteration_id=iteration_id,
      project_id=project_id,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.packer_image.newAttrs` constructs a new object with attributes and blocks configured for the `packer_image`\nTerraform data source.\n\nUnlike [hcp.data.packer_image.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The slug of the HCP Packer Registry bucket to pull from.\n  - `channel` (`string`): The channel that points to the version of the image being retrieved. Either this or `iteration_id` must be specified. Note: will incur a billable request When `null`, the `channel` field will be omitted from the resulting object.\n  - `cloud_provider` (`string`): Name of the cloud provider this image is stored-in.\n  - `component_type` (`string`): Name of the builder that built this image. Ex: `amazon-ebs.example`. When `null`, the `component_type` field will be omitted from the resulting object.\n  - `iteration_id` (`string`): The iteration from which to get the image. Either this or `channel` must be specified. When `null`, the `iteration_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): \nThe ID of the HCP project where the HCP Packer Registry image is located.\nIf not specified, the project specified in the HCP Provider config block will be used, if configured.\nIf a project is not configured in the HCP Provider config block, the oldest project in the organization will be used. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `region` (`string`): Region this image is stored in, if any.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.packer_image.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `packer_image` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    cloud_provider,
    region,
    channel=null,
    component_type=null,
    iteration_id=null,
    project_id=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel: channel,
    cloud_provider: cloud_provider,
    component_type: component_type,
    iteration_id: iteration_id,
    project_id: project_id,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.packer_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`): Set the `default` field on the resulting object. When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withBucketName':: d.fn(help='`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withChannel':: d.fn(help='`hcp.string.withChannel` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the channel field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel` field.\n', args=[]),
  withChannel(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          channel: value,
        },
      },
    },
  },
  '#withCloudProvider':: d.fn(help='`hcp.string.withCloudProvider` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the cloud_provider field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cloud_provider` field.\n', args=[]),
  withCloudProvider(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          cloud_provider: value,
        },
      },
    },
  },
  '#withComponentType':: d.fn(help='`hcp.string.withComponentType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the component_type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `component_type` field.\n', args=[]),
  withComponentType(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          component_type: value,
        },
      },
    },
  },
  '#withIterationId':: d.fn(help='`hcp.string.withIterationId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the iteration_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `iteration_id` field.\n', args=[]),
  withIterationId(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          iteration_id: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`hcp.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value): {
    data+: {
      hcp_packer_image+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
