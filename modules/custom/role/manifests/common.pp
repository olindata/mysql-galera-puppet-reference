
class role::common {
  include profile::puppet::agent
  include profile::mcollective

  include profile::apt
  include profile::base
}
