<h1 align="center">tf-libsonnet/hashicorp-hcp</h1>

<p align="center">
  <em>Generate Terraform with Jsonnet</em>
</p>

<p align="center">
  <a href="https://github.com/tf-libsonnet/hashicorp-hcp/blob/main/LICENSE">
    <img alt="LICENSE" src="https://img.shields.io/github/license/tf-libsonnet/hashicorp-hcp?style=for-the-badge">
  </a>
  <a href="https://github.com/tf-libsonnet/hashicorp-hcp/releases/latest">
    <img alt="latest release" src="https://img.shields.io/github/v/release/tf-libsonnet/hashicorp-hcp?style=for-the-badge">
  </a>
</p>

This repository contains [Jsonnet](https://jsonnet.org/) functions for generating resources and data sources for the
[hashicorp/hcp](https://registry.terraform.io/providers/hashicorp/hcp) Terraform provider.

> **IMPORTANT**
>
> This library is generated using [tf-libsonnet/libgenerator](https://github.com/tf-libsonnet/libgenerator). If you find
> an issue with the generated code, please file an issue in the `libgenerator` repository.
>
> If you would like to contribute a change, you may open a Pull Request with a suggested change, but please note that it
> will **not be merged in until the necessary updates have been made to the generator**.

## Usage

Install the package using [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler):

```
jb install github.com/tf-libsonnet/hashicorp-hcp@main

# Or if you want to install a specific release
#   jb install github.com/tf-libsonnet/hashicorp-hcp@v0.0.1
# Or if you want to install bindings for a specific provider major version series
#   jb install github.com/tf-libsonnet/hashicorp-hcp/0.x@main
```

You can then import the package in your Jsonnet code:

```jsonnet
// main.tf.json.jsonnet
local hcp = import 'github.com/tf-libsonnet/hashicorp-hcp/main.libsonnet';

hcp.provider.new(src='hashicorp/hcp')
+ hcp.hvn.new(
  'example',
  hvn_id='main-hvn',
  cloud_provider='aws',
  region='us-west-2',
  cidr_block='172.25.16.0/20',
)
```

This will generate the following Terraform JSON :

```json
{
   "provider": {
      "hcp": [
         { }
      ]
   },
   "resource": {
      "hcp_hvn": {
         "example": {
            "cidr_block": "172.25.16.0/20",
            "cloud_provider": "aws",
            "hvn_id": "main-hvn",
            "region": "us-west-2"
         }
      }
   },
   "terraform": {
      "required_providers": {
         "hcp": {
            "source": "hashicorp/hcp"
         }
      }
   }
}
```

Refer to the [reference docs](/docs/0.x/README.md) for a list of supported data sources and resources:

- [provider config](/docs/0.x/provider.md)
- [resources](/docs/0.x/README.md)
- [data sources](/docs/0.x/data/index.md)

## Contributing

Refer to the [CONTRIBUTING.md](/CONTRIBUTING.md) document for information on how to contribute to `tf.libsonnet`.
