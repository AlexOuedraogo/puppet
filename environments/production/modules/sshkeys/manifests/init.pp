# Maintain only Alex sshkey
class sshkeys {

  file { '/root/.ssh':
    ensure => directory,
    mode   => 0755
}
  file { '/root/.ssh/authorized_keys':
    ensure => file,
    source => 'puppet:///modules/sshkeys/rsa_id.pub',
    mode   => 0766
}
}

