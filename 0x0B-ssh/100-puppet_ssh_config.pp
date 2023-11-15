#!/usr/bin/env bash
# using puppet to make changes to my configuration file

file { 'ect/ssh/ssh_cofig':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	Identityfile ~/.ssh/school
	PasswordAuthentication no
	",

}
