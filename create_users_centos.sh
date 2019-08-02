#!/bin/bash

PASSWD=DefaultPassword12345
for USER in "$@"
do
	echo "Creating home folder for user $USER"
	useradd -m -p $(openssl passwd -1 $PASSWD) $USER
	
	mkdir /home/$USER/.ssh
	
	echo "Creating ssh access."

	cat ./"$USER"_openssh.pub >> /home/$USER/.ssh/authorized_keys
	chown -R $USER:$USER /home/$USER/
	chmod 700 /home/$USER/.ssh
	chmod 600 /home/$USER/.ssh/authorized_keys 
	
done

systemctl restart sshd.service

echo "Done."
