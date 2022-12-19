local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data', url='', help=''),
  aws_network_peering: (import 'aws_network_peering.libsonnet'),
  aws_transit_gateway_attachment: (import 'aws_transit_gateway_attachment.libsonnet'),
  azure_peering_connection: (import 'azure_peering_connection.libsonnet'),
  boundary_cluster: (import 'boundary_cluster.libsonnet'),
  consul_agent_helm_config: (import 'consul_agent_helm_config.libsonnet'),
  consul_agent_kubernetes_secret: (import 'consul_agent_kubernetes_secret.libsonnet'),
  consul_cluster: (import 'consul_cluster.libsonnet'),
  consul_versions: (import 'consul_versions.libsonnet'),
  hvn: (import 'hvn.libsonnet'),
  hvn_peering_connection: (import 'hvn_peering_connection.libsonnet'),
  hvn_route: (import 'hvn_route.libsonnet'),
  packer_image: (import 'packer_image.libsonnet'),
  packer_image_iteration: (import 'packer_image_iteration.libsonnet'),
  packer_iteration: (import 'packer_iteration.libsonnet'),
  vault_cluster: (import 'vault_cluster.libsonnet'),
}
