# Puppet manifest to create a file with permissions

file { 'school':
  path    => '/tmp/school',
  content => 'I love puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744'
}
