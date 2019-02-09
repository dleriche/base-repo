class profile::baseline::windows::users  {

  user { 'DevOps':
    ensure   => present,
    password => Sensitive('Adm1nistrat0r'),
    groups   => ['DevOps']
  }
  group { 'DevOps':
    ensure => present,
    members => ['DevOps'],
    }
}
