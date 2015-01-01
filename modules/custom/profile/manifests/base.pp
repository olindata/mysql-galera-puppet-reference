class profile::base {
  include ::augeas
  include ::ssh
  include ::ntp

#  include profile::network
#  include profile::timezone

#  # export host resources from all other servers
#  @@host { $::fqdn:
#    ensure       => present,
#    ip           => $::ipaddress_eth2,
#    host_aliases => $::hostname,
#  }
#
#  # collect exported host resources from other servers
#  Host <<| |>>

  case $::osfamily {
    'debian' : { include profile::apt }
  }

}
