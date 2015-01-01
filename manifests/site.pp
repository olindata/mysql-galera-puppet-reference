
node 'haproxy.cluster.vm' {
  include role::puppetmasterdb
}

node 'db01.cluster.vm' {
  include role::hagalera
}

node 'db02.cluster.vm' {
  include role::hagalera
}

node 'db03.cluster.vm' {
  include role::hagalera
}

