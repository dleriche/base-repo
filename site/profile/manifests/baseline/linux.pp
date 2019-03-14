class profile::platform::baseline::linux {

  include ::profile::baseline::linux::packages
  include ::profile::baseline::linux::vim
  include ::profile::baseline::linux::motd
  include ::profile::baseline::users::linux
  include ::profile::baseline::linux::ssh
  include ::profile::baseline::linux::firewall

}
