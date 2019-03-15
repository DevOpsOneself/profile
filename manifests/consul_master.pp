# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include profile::consul_master
class profile::consul_master (
  $bootstrap_expect,
  $data_center,
  $node_name,
){
  class {'::consul':
    config_hash => {
      'bootstrap_expect' => $bootstrap_expect,
      'data_dir'         => '/opt/consul',
      'datacenter'       => $data_center,
      'log_level'        => 'INFO',
      'node_name'        => $node_name,
      'server'           => true,
      'ui'               => true
    },
  }
}
