class admin {
  file { '/tmp/tree':
    source  => 'puppet:///module/admin/tree',
    recurse => true,
}
}
 
