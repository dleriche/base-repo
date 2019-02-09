class profile::base {

  #the base profile should include component modules that will be on all nodes

  case $::kernel {
    'windows': {
      include ::profile::baseline::windows
    }
    default: {
      fail('Unsupported Operating System!')
    }
  }

}
