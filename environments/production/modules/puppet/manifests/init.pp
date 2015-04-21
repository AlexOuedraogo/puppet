# Make sure papply script is in user path
class puppet {
  file { '/usr/local/bin/papply':
  source => 'puppet:///modules/puppet/papply.sh',
  mode   => '0755',
}
}
