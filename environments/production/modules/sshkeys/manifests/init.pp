# Maintain only Alex sshkey
class sshkeys {
  file { '/home/ouedraogoa/.ssh/authorized_keys':
    
    ensure => file,
    source => 'puppet:///modules/sshkeys/rsa_id.pub',
    mode   => '0600',
}
}
