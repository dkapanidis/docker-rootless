#/bin/sh

# This script prepares the OS for Docker rootless mode

sudo apt-get install -y uidmap aufs-tools cgroup-lite
sudo modprobe ip_tables
sudo su -c "echo 'ip_tables' >> /etc/modules"
