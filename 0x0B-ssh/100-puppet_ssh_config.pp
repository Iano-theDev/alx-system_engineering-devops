# puppet script to configure SSH client
# config 1. use privatee key in ~/.ssh/school
# config 2.refuse to authenticate using a password

exec { 'echo':
  path    => 'usr/bin:bin',
  command => 'echo "    IdentityFile ~/.ssh/school\n    PasswordAuthentication no" >> /etc/ssh/ssh_config',
  returns => [0,1],
}
