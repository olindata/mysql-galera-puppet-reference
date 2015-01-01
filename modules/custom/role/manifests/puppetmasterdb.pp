class role::puppetmasterdb {
  include role::common
  include profile::puppet::master
  include profile::puppetdb::master
}
