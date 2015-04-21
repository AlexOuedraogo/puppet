class users {
 user { 'gui':
  ensure           => 'present',
  comment          => 'gui',
  password         => '$6$T5YjaeSdk9KmW1ww$zxzjkJmcsR8Ch3MuHlj3LbC5RCmvwWo0r3/Z1ek7wspNt6LdBf6PYW.BQg19bX0X04wo3zXy9HGBE9NOcS4i1.',
  shell            => '/bin/bash',
  managehome       => true,
}
}
