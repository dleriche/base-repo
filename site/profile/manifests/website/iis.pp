class profile::website::iis {

  windowsfeature { 'Web-WebServer':
    ensure             => present,
    installsubfeatures => true,
  }
  # Delete the default website to prevent a port binding conflict.
  iis_site {'Default Web Site':
    ensure  => absent,
    require => Windowsfeature['Web-WebServer'],
  }
  iis_site { 'minimal':
    ensure          => 'started',
    physicalpath    => 'c:\\inetpub\\minimal',
    applicationpool => 'DefaultAppPool',
    require         => [
      File['minimal'],
      Iis_site['Default Web Site']
    ],
  }
  file { 'minimal':
    ensure => 'directory',
    path   => 'c:\\inetpub\\minimal',
  }
  file { 'c:/inetpub/minimal/index.html':
    ensure  => file,
    content => epp('profile/website.html.epp'),
    require => File['minimal'],
  }

}
