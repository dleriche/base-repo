class profile::baseline::linux::firewall (
  $purge = false,
) {

  Firewall {
    before  => Class['profile::baseline::linux::firewall_post'],
    require => Class['profile::baseline::linux::firewall_pre'],
  }

  class { ['::profile::baseline::linux::firewall_pre', '::profile::baseline::linux::firewall_post']: }

  resources { 'firewall':
    purge => $purge,
  }

  include ::firewall

}
