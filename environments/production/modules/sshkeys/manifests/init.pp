# Maintain only Alex sshkey
class sshkeys {
  file { '/home/ouedraogoa/.ssh/authorized_keys':
    
    ensure => file,
    source => 'puppet:///modules/puppet/rsa_id.pub',
    mode   => '0600',
}
}

