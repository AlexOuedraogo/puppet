class user::virtual {
  define ssh_user($key) {
    user { $name:
      ensure     => 'present',
      managehome => true,
}

  file { "/home/${name}/.ssh":
    ensure => directory,
    mode   => '0700',
    owner  => $name,
}

  ssh_authorized_key { "${name}_key":
    key     => $key,
    type    => 'ssh-rsa',
    user    => $name,
    require => File["/home/${name}/.ssh"],
}
}

  @ssh_user { 'beheer':
    key => 'AAAB3NzaC1yc2EAAAADAQABAAABAQCe8H1BkQPUxNyaYkE/0QCxlAq263BFAnajgnnHa4kY6pp8D4R8LisKcRUtINOy2yZo9l/IOA4DIJwR0HbAVrn16x5RyLiPjd+6A/auYKMgq8K+7kozknaPEgzzItytLqBwrvY0gdAcmY8pMsfDzUebhJPi++Tft4UTo3jsaiw5nRQJrxps9an7Qh+iCS/bxOjY9o0ItqCfkIggSKOVHQlIzdpbdqkUx52OD8blfTcUJBQ4uYDSY+DG628kL35UN9haMHygdwyLE2bohC9EWMjkua2svvp1MDNHMd5egnZlSiU5/9z2f7wW/UWonKphRDrm2cC2d2wdiQ66J35Mgkcn beheer@zandoma.lan'
}

}
