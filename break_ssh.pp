# /root/learning-manifests/break_ssh.pp

package { 'openssh-server':
  ensure => present,
  before => File['sshd_config']
}

file { 'sshd_config':
  ensure => 'file',
  path   => '/etc/ssh/sshd_config'
  mode   => 600,
  source => '/root/learning-manifests/sshd_config',
}

service { 'sshd':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  subscribe  => File['sshd_config'],
}
