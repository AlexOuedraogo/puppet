# Make sure papply script is in user path
class puppet {
  file { '/usr/local/bin/papply':
  source => 'puppet:///modules/puppet/papply.sh',
  mode   => '0755',
}
file { '/usr/local/bin/pull-updates':
source => 'puppet:///modules/puppet/pull-updates.sh',
mode   => '0755',
}

cron { 'run-puppet':
ensure  => 'present',
user    => 'root',
command => '/usr/local/bin/pull-updates',
minute  => '*/10',
hour    => '*',
}
}
