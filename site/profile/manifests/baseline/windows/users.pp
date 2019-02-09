class profile::baseline::windows::users  {

    group { 'DevOps':
    ensure          => present,
    comment         => 'DevOps Group created for On-Boarding',
    }
    user { 'DevOps':
    ensure          => present,
    managehome      => true,
    comment         => 'DevOps User created for On-Boarding',
    password        => Sensitive('Adm1nistrat0r'),
    groups          => ['DevOps','Users'],
    auth_membership => 'minimum',
  }

}
