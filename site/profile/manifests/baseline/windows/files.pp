class profile::baseline::windows::files {

  file { 'c:/DevOps':
    ensure  => directory,
  }
  file { 'c:/DevOps/testfile.txt':
    ensure  => present,
    content => 'File created to test directory and file creation on Windows'
  }
  acl { 'c:/DevOps':
    permissions                => [
      { identity => 'DevOps', rights => ['read'] },
      { identity => 'DevUser', rights => ['full'] }
    ],
    owner                      => 'DevUser',
    group                      => 'DevOps',
    inherit_parent_permissions => false,
  }
}
