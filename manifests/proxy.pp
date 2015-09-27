# Class: jenkins::proxy
class jenkins::proxy {
  file {'/etc/httpd/conf.d/jenkins.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('jenkins/vhost.erb'),
  }
}
