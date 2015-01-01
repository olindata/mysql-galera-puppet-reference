class profile::mysql::mybase {
  include mysql::client
  
  $override_options = hiera_hash('profile::mysql::mybase::override_options', undef)

  if $override_options {
    class { 'mysql::server':
      override_options => $override_options,
      require          => [Package['mysql_client']]
       }
     } else {
    fail('No hash found in hiera to override default mysql settings in class profile::mysql')
  }

#  $insydedb = hiera_hash('profile::mysql::insydedb')
#  create_resources('mysql_database', $insydedb)  
#
#  $insydeuser = hiera_hash('profile::mysql::insydeuser')
#  create_resources('mysql_user', $insydeuser)
#
#  $insydegrant = hiera_hash('profile::mysql::insydegrant')
#  create_resources('mysql_grant', $insydegrant)


  package { 'percona-toolkit': 
    ensure => latest, 
  }

  package { 'xtrabackup':
    ensure  => latest,
  }
 
}
