# Maintain only Alex sshkey
class sshkeys {

  file { '/home/ouedraogoa/.ssh':
    ensure => directory,
    mode   => 0755
}
  file { '/home/ouedraogoa/.ssh/authorized_keys':
    ensure => file,
    source => 'puppet:///modules/sshkeys/rsa_id.pub',
    mode   => 0766
}
}

