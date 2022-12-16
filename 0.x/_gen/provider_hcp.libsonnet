local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    client_id=null,
    client_secret=null,
    alias=null,
    src=null,
    version=null
  ):: tf.withProvider(
    name='hcp',
    alias=alias,
    src=src,
    version=version,
    attrs=self.newAttrs(client_id=client_id, client_secret=client_secret)
  ),
  newAttrs(
    client_id=null,
    client_secret=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
  }),
}
