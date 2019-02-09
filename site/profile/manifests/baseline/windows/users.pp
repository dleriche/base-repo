class profile::baseline::windows::users  {

  user { 'DevOps':
    ensure          => present,
    managehome      => true,
    comment         => 'DevOps User created for On-Boarding',
    password        => Sensitive('Adm1nistrat0r'),
    groups          => ['DevOps','Users'],
    auth_membership => 'minimum',
  }
  group { 'DevOps':
    ensure          => present,
    comment         => 'DevOps Group created for On-Boarding',
    members         => ['DevOps'],
    auth_membership => false,
    }
}
