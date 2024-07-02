#!/usr/bin/env bash
# using Puppet to make changes to our configuration file

# define the type of file
file { '/etc/ssh/ssh_config':
  # ensure the file exists before anything futher ensure => present,
}

file_line { 'Turn off passwd auth':
  # specifies the path to the file being changed.
  path	=> '/etc/ssh/ssh_config',
  # defines the line to be changed.
  line	=> 'PasswordAuthentication no',
  # specifies a regular expression to match the existing line before changing it.
  match	=> '^#PasswordAuthentication',
}

file_line { 'Declare identity file':
  # specifies the path to the file being changed.
  path	=> '/etc/ssh/ssh_config',
  # defines the line to be changed.
  line	=> 'IdentityFile ~/.ssh/school',
  # specifies a regular expression to match the existing line before changing it.
  match	=> '^#IdentityFile',
}
