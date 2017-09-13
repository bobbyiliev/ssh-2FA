#!/bin/bash

######################################################################
# Date: September 12th 2017                                          #
# Author:                                                            #
#  - Bobby I.                                                        #
# Email:                                                             #
# <bobby@bobbyiliev.com>                                             #
# __revision='1.0'                                                   #
# Simple scripts that adds a small 2FA authentication                #
# What's different about the script is that you can use it on        #
# systems that you do not have root or sudo access to                #
######################################################################

# Change the value for 'mypass':
mypass=Your-Pass-Goes-Here

host=$(hostname)
user=$(whoami)
trap command SIGINT
trap "" SIGTSTP
read -s -p "$user@$host's password: " pass
echo
    	if [ "$pass" = "$mypass" ]; then
                exit 0
        else
	while [ -z $pass ] || [ "$pass" != "$mypass" ] ; do
                read -s -p "$user@$host's password: " pass
                echo
                if [ "$pass" = "$mypass" ]; then
                        exit 0
                else
                        #echo "Wrong password!"
                        unset pass
                fi

                unset pass
        done
fi
