class profile::baseline::windows::reg_keys {

  registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}':
    ensure => present,
    type   => dword,
    data   => '1',
  }
  registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073':
    ensure => present,
    type   => dword,
    data   => '1',
  }
  registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\Reliability\ShutdownReasonUI':
    ensure => present,
    type   => dword,
    data   => '1',
  }
  # disable auto updating so machine doesnt start downloading / updating
  registry::value { 'disable updates':
    key   => 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU',
    value => 'NoAutoUpdate',
    type  => dword,
    data  => '1',
  }
}
