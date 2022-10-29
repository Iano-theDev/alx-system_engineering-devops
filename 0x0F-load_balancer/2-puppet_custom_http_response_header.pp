# update linux
exec { 'update linux':
  command => 'sudo apt-get update',
  provider => 'shell',
  before => Exec['install Nginx'],
}

# install nginx
-> exec {'install Nginx':
  command => 'sudo apt-get install nginx -y',
  provider => 'shell',
  before => Exec['add_header'],
}
-> package { 'nginx':
  ensure => 'installed',
  after => Exec['install Nginx'],
}
# add header
-> file_line { 'add_header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => "	location / {
  add_header X-Served-By ${hostname};",
  match  => '^\tlocation / {',
}

-> exec { 'restart Nginx':
  command => 'sudo service nginx restart',
  provider => 'shell',
}
