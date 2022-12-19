local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='resource', url='', help=''),
  aws_network_peering: (import 'aws_network_peering.libsonnet'),
  aws_transit_gateway_attachment: (import 'aws_transit_gateway_attachment.libsonnet'),
  azure_peering_connection: (import 'azure_peering_connection.libsonnet'),
  boundary_cluster: (import 'boundary_cluster.libsonnet'),
  consul_cluster: (import 'consul_cluster.libsonnet'),
  consul_cluster_root_token: (import 'consul_cluster_root_token.libsonnet'),
  consul_snapshot: (import 'consul_snapshot.libsonnet'),
  hvn: (import 'hvn.libsonnet'),
  hvn_peering_connection: (import 'hvn_peering_connection.libsonnet'),
  hvn_route: (import 'hvn_route.libsonnet'),
  vault_cluster: (import 'vault_cluster.libsonnet'),
  vault_cluster_admin_token: (import 'vault_cluster_admin_token.libsonnet'),
}
