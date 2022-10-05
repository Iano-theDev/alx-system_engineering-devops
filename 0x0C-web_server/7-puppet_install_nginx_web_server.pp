# install nginx in ubuntu server and match configuration spesifications

exec { 'update system':
      commande => '/usr/bin/apt-get update',
}

package { 'nginx':
      ensure => 'installed',
      require => Exec['update system']
}

file { '/usr/share/nginx/html/index.html':
      content => 'Hello World!'
}

exec { 'redirect_me':
      command => 'sed -i "25i\	rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default',
      provide => 'shell'
}

service { 'nginx':
      ensure => running,
      require => Package['nginx']
}
