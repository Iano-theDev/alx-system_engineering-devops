# Working With Linux Commands
## SSH and SFTP
* Before SFTP there was FTP which was an unsecured file transfer
  protocal between two machines, SFTP is an upgrade of FTP with the
  S standing for SSH/Secure (Secure Shell).

* To get started, on your local/client machine, use the ssh-keygen
  command which will generate a public and private key and store
  them in a .ssh directory in you home path.

* If you had already generated the ssh keys earlier, the previous will
  be overwritten, hence it will be impossible to connect to computers
  which had the old public ssh. Be careful.

* To generate a higher rsa bit key with ssh-keygen, use the -b option
  with 4096. hence: ssh-keygen -b 4086

* After key generation you can use the command ssh-copy-id command
  specifying the username and ip address of the remote server.
  Hence the command would look like ssh-copy-id username@remote_ip

* Alternativley, you can choose to copy the public rsa onto the
  remote host manually. Copy it from your local /.ssh/id_rsa.pub
  and navigate to the remote server's /.ssh dir, create a file
  named authorized_keys and paste it there.

* Form there you can use the command ssh 'username@remote_host' to c
  connect to your remote server.

* To connect through SFTP , just swap the ssh command with sftp
  hence: sftp 'username@remote_host'
  If connceted, the propt will change to sftp> meaning you can
  now transfer files through sftp between your local and remote server

* To move a file from the remote server to the local server, user the
  get command spcifying the path to the file.
  Hence: get filename/filepath

* To move a file from the local to the remote server, use the put
  command followed by the file path.
  Hence: put filename/filepath.

* to list files on the local, use lls command, to list files on the
  remote user ls.
  to change directory in local use lcd command, and on the remote
  server just use cd
  to print working directory on local use lpwd command, and pwd on
  the remote server.

* To get a list of command you can use to navigate sftp, use the
  help command, it will come in handy.
  