class profile::website {

case $::kernel {
    'windows': {
      include profile::website::iis
    }
    default: {
      fail('Unsupported Operating System!')
    }
}
