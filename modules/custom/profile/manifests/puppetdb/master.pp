class profile::puppetdb::master {
  include ::puppetdb
  include ::puppetdb::master::config
}
