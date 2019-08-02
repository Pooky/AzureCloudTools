# CloudTools

In this repository will be tools for better work with Cloud Environment - mostly Linux Servers.

## create_users.sh

This script will do following for passed arguments:

* Create new user with default password
* Import user SSH public key into .ssh/authorized_keys
* Change ownership of the folders to be only accessible by this user
* Add user to sudo group (optional)
* Restart SSH service

There is modification for CentOS - with suffix create_users_centos.sh






