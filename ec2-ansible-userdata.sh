#!/bin/bash
yum update -y
yum install python python-pip python-level openssl git -y

yum install ansible -y

useradd ansible
echo 123 |passwd ansible --stdin
su ansible -c "ssh-keygen -f /home/ansible/.ssh/id_rsa -N ''"
echo "ansible ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

sed -e '/PermitRootLogin/ s/^#*/#/' -i /etc/ssh/sshd_config
sed -e '/PasswordAuthentication/ s/^#*/#/' -i /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
service sshd restart
su ansible -c "cp /home/ansible/.ssh/id_rsa.pub /home/ansible/.ssh/authorized_keys"
