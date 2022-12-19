local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='aws_transit_gateway_attachment', url='', help='`aws_transit_gateway_attachment` represents the `hcp_aws_transit_gateway_attachment` Terraform data source.\n\nThe AWS transit gateway attachment data source provides information about an existing transit gateway attachment.\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`hcp.data.aws_transit_gateway_attachment.new` injects a new `data_hcp_aws_transit_gateway_attachment` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    hcp.data.aws_transit_gateway_attachment.new('some_id')\n\nYou can get the reference to the `id` field of the created `hcp.data.aws_transit_gateway_attachment` using the reference:\n\n    $._ref.data_hcp_aws_transit_gateway_attachment.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_hcp_aws_transit_gateway_attachment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `transit_gateway_attachment_id` (`string`): The user-settable name of the transit gateway attachment in HCP.\n  - `wait_for_active_state` (`bool`): If `true`, Terraform will wait for the transit gateway attachment to reach an `ACTIVE` state before continuing. Default `false`. When `null`, the `wait_for_active_state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.aws_transit_gateway_attachment.timeouts.new](#fn-awstransitgatewayattachmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    hvn_id,
    transit_gateway_attachment_id,
    timeouts=null,
    wait_for_active_state=null,
    _meta={}
  ):: tf.withData(
    type='hcp_aws_transit_gateway_attachment',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      hvn_id=hvn_id,
      timeouts=timeouts,
      transit_gateway_attachment_id=transit_gateway_attachment_id,
      wait_for_active_state=wait_for_active_state
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`hcp.data.aws_transit_gateway_attachment.newAttrs` constructs a new object with attributes and blocks configured for the `aws_transit_gateway_attachment`\nTerraform data source.\n\nUnlike [hcp.data.aws_transit_gateway_attachment.new](#fn-awstransitgatewayattachmentnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `hvn_id` (`string`): The ID of the HashiCorp Virtual Network (HVN).\n  - `transit_gateway_attachment_id` (`string`): The user-settable name of the transit gateway attachment in HCP.\n  - `wait_for_active_state` (`bool`): If `true`, Terraform will wait for the transit gateway attachment to reach an `ACTIVE` state before continuing. Default `false`. When `null`, the `wait_for_active_state` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [hcp.data.aws_transit_gateway_attachment.timeouts.new](#fn-awstransitgatewayattachmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `aws_transit_gateway_attachment` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    hvn_id,
    transit_gateway_attachment_id,
    timeouts=null,
    wait_for_active_state=null
  ):: std.prune(a={
    hvn_id: hvn_id,
    timeouts: timeouts,
    transit_gateway_attachment_id: transit_gateway_attachment_id,
    wait_for_active_state: wait_for_active_state,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`hcp.aws_transit_gateway_attachment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`string`):  When `null`, the `default` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      default=null
    ):: std.prune(a={
      default: default,
    }),
  },
  '#withHvnId':: d.fn(help='`hcp.string.withHvnId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the hvn_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `hvn_id` field.\n', args=[]),
  withHvnId(dataSrcLabel, value): {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          hvn_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`hcp.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [hcp.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(dataSrcLabel, value): {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`hcp.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform data source block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [hcp.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(dataSrcLabel, value): {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransitGatewayAttachmentId':: d.fn(help='`hcp.string.withTransitGatewayAttachmentId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the transit_gateway_attachment_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `transit_gateway_attachment_id` field.\n', args=[]),
  withTransitGatewayAttachmentId(dataSrcLabel, value): {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          transit_gateway_attachment_id: value,
        },
      },
    },
  },
  '#withWaitForActiveState':: d.fn(help='`hcp.bool.withWaitForActiveState` constructs a mixin object that can be merged into the `bool`\nTerraform data source block to set or update the wait_for_active_state field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `wait_for_active_state` field.\n', args=[]),
  withWaitForActiveState(dataSrcLabel, value): {
    data+: {
      hcp_aws_transit_gateway_attachment+: {
        [dataSrcLabel]+: {
          wait_for_active_state: value,
        },
      },
    },
  },
}
