class profile::baseline::windows::packages {

  include chocolatey

  package { '7zip':
    ensure   => latest,
    provider => 'chocolatey',
  }
}
