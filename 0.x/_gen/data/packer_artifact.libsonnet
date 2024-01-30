local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='packer_artifact', url='', help='`packer_artifact` represents the `hcp_packer_artifact` Terraform data source.\n\nThe HCP Packer Artifact data source retrieves information about an Artifact.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.packer_artifact.new` injects a new `data_hcp_packer_artifact` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.packer_artifact.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.packer_artifact` using the reference:\n\n    $._ref.data_hcp_packer_artifact.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_packer_artifact.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `bucket_name` (`string`): The name of the HCP Packer Bucket where the Artifact is located.\n  - `channel_name` (`string`): \nThe name of the HCP Packer Channel the Version containing this Artifact is assigned to.\nThe Version currently assigned to the Channel will be fetched. \nExactly one of `channel_name` or `version_fingerprint` must be provided. When `null`, the `channel_name` field will be omitted from the resulting object.\n  - `component_type` (`string`): Name of the Packer builder that built this Artifact. Ex: `amazon-ebs.example`. When `null`, the `component_type` field will be omitted from the resulting object.\n  - `platform` (`string`): Name of the platform where the HCP Packer Artifact is stored.\n  - `project_id` (`string`): The ID of the HCP Organization where the Artifact is located When `null`, the `project_id` field will be omitted from the resulting object.\n  - `region` (`string`): The Region where the HCP Packer Artifact is stored, if any.\n  - `version_fingerprint` (`string`): \nThe fingerprint of the HCP Packer Version where the Artifact is located. \nIf provided in the config, it is used to fetch the Version.\nExactly one of `channel_name` or `version_fingerprint` must be provided. When `null`, the `version_fingerprint` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    bucket_name,
    platform,
    region,
    channel_name=null,
    component_type=null,
    project_id=null,
    version_fingerprint=null,
    _meta={}
  ):: tf.withData(
    type='hcp_packer_artifact',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      channel_name=channel_name,
      component_type=component_type,
      platform=platform,
      project_id=project_id,
      region=region,
      version_fingerprint=version_fingerprint
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.packer_artifact.newAttrs` constructs a new object with attributes and blocks configured for the `packer_artifact`\nTerraform data source.\n\nUnlike [hcp.data.packer_artifact.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `bucket_name` (`string`): The name of the HCP Packer Bucket where the Artifact is located.\n  - `channel_name` (`string`): \nThe name of the HCP Packer Channel the Version containing this Artifact is assigned to.\nThe Version currently assigned to the Channel will be fetched. \nExactly one of `channel_name` or `version_fingerprint` must be provided. When `null`, the `channel_name` field will be omitted from the resulting object.\n  - `component_type` (`string`): Name of the Packer builder that built this Artifact. Ex: `amazon-ebs.example`. When `null`, the `component_type` field will be omitted from the resulting object.\n  - `platform` (`string`): Name of the platform where the HCP Packer Artifact is stored.\n  - `project_id` (`string`): The ID of the HCP Organization where the Artifact is located When `null`, the `project_id` field will be omitted from the resulting object.\n  - `region` (`string`): The Region where the HCP Packer Artifact is stored, if any.\n  - `version_fingerprint` (`string`): \nThe fingerprint of the HCP Packer Version where the Artifact is located. \nIf provided in the config, it is used to fetch the Version.\nExactly one of `channel_name` or `version_fingerprint` must be provided. When `null`, the `version_fingerprint` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `packer_artifact` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    bucket_name,
    platform,
    region,
    channel_name=null,
    component_type=null,
    project_id=null,
    version_fingerprint=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    channel_name: channel_name,
    component_type: component_type,
    platform: platform,
    project_id: project_id,
    region: region,
    version_fingerprint: version_fingerprint,
  }),
  '#withBucketName':: d.fn(help='`hcp.string.withBucketName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the bucket_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bucket_name` field.\n', args=[]),
  withBucketName(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  '#withChannelName':: d.fn(help='`hcp.string.withChannelName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the channel_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `channel_name` field.\n', args=[]),
  withChannelName(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          channel_name: value,
        },
      },
    },
  },
  '#withComponentType':: d.fn(help='`hcp.string.withComponentType` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the component_type field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `component_type` field.\n', args=[]),
  withComponentType(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          component_type: value,
        },
      },
    },
  },
  '#withPlatform':: d.fn(help='`hcp.string.withPlatform` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the platform field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `platform` field.\n', args=[]),
  withPlatform(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          platform: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`hcp.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`hcp.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the region field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withVersionFingerprint':: d.fn(help='`hcp.string.withVersionFingerprint` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the version_fingerprint field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version_fingerprint` field.\n', args=[]),
  withVersionFingerprint(dataSrcLabel, value): {
    data+: {
      hcp_packer_artifact+: {
        [dataSrcLabel]+: {
          version_fingerprint: value,
        },
      },
    },
  },
}
