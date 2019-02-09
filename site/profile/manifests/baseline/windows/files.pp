class profile::baseline::windows::files.pp {

  file { 'c:/DevOps':
    ensure  => directory,
  }
  file { 'c:/DevOps/testfile.txt':
    ensure => present,
    content => 'File created to test directory and file creation on Windows'}
    require => File['c:/DevOps'],
}
