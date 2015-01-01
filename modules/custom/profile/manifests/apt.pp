class profile::apt {
  include ::apt

  $repos = hiera_hash('profile::apt::repos', undef)

  if $repos {
     create_resources('apt::source', $repos)
  } else {
    fail('No packages found in hiera in class profile::apt.')
  }
}
