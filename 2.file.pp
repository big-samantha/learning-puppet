# /root/learning-manifests/2.file.pp

file { '/tmp/test1':
  ensure  => present,
  content => "Hi.",
}

file {'/tmp/test2':
  ensure => directory,
  mode   => 0644,
}

file {'/tmp/test3':
  ensure => link,
  target => '/tmp/test1',
}

notify {"I'm so notifying you.":}
notify {"So am I!":}
