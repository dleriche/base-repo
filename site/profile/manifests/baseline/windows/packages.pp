class profile::baseline::windows::packages {
  include chocolatey
  Package {
    ensure   => installed,
    provider => chocolatey,
  }
  package { 'openssh': }
  package { '7zip': }
}
