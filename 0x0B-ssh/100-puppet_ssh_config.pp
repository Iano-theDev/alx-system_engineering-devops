# configure ssh to prevent password authentication
exec { 'echo':
  path    => 'usr/bin:/bin',
  command => 'echo " IdentifyFile ~/.ssh/school\n PasswordAuthentification no" >> /etc/ssh/ssh_config',
  returns => [0,1],
}
