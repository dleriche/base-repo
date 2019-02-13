class profile::aws_state::aws_start {
  aws_instances { your_vm:
    ensure => 'running',
  }
}
