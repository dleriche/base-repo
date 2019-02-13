class profile::aws_state::aws_start {
  include 
  
  aws_instances { your_vm:
    name   => 
    ensure => 'running',
  }
}
