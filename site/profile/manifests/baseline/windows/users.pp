class profile::baseline::windows::users  {

    group { 'DevOps':
    ensure          => present,
    }
    user { 'DevUser':
    ensure          => present,
    managehome      => true,
    comment         => 'DevUser created for On-Boarding',
    password        => Sensitive('Adm1nistrat0r'),
    groups          => ['DevOps','Users'],
    auth_membership => 'minimum',
  }

}
