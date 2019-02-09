class profile::baseline::windows::iis {

  windowsfeature { 'Web-WebServer':
    ensure             => present,
    installsubfeatures => true,
  }
}
