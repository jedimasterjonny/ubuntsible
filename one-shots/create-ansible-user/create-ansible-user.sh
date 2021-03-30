#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

useradd ansible -m
echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible-allow-to-sudo
mkdir /home/ansible/.ssh
cp /home/jonny/.ssh/authorized_keys /home/ansible/.ssh/authorized_keys
chown ansible:ansible -R /home/ansible/.ssh/
