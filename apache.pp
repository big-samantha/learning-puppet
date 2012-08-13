package {'httpd':
  ensure => present,
}

service {'httpd':
  ensure  => stopped,
  require => Package['httpd'],
}
