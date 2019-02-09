class profile::web_app {

  case $::kernel {
    'windows': {
      include profile::website::iis
    }
    default: {
      fail('Unsupported Operating System!')
    }
  }
}
