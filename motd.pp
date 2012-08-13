file {'motd':
  path    => '/etc/motd',
  ensure  => present,
  content => 'Greetings from disneyland',
}
