# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include profile::consul_agent
class profile::consul_agent (
  $data_center,
  $node_name,
  $retry_join,
){
  class {'::consul':
    config_hash => {
      'data_dir'   => '/opt/consul',
      'datacenter' => $data_center,
      'log_level'  => 'INFO',
      'node_name'  => $node_name,
      'retry_join' => $retry_join,
    },
  }
}
