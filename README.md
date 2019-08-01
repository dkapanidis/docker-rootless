# Install Dependencies

```sh
apt-get install -y uidmap
modprobe ip_tables
EOF
```

extras:

```sh
apt-get install systemd
```

Activate cgroup: https://stackoverflow.com/questions/32002882/error-starting-docker-daemon-on-ubuntu-14-04-devices-cgroup-isnt-mounted

```sh
sudo apt-get install aufs-tools
sudo apt-get install cgroup-lite
```

https://stackoverflow.com/questions/21983554/iptables-v1-4-14-cant-initialize-iptables-table-nat-table-does-not-exist-d/27129275

```sh
sudo modprobe ip_tables
sudo echo 'ip_tables' >> /etc/modules
```

# Install Docker Rootless

```sh
curl -sSL https://get.docker.com/rootless | sh
```
