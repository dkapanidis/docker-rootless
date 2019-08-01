# Docker Rootless Mode

For details about Docker Rootless check [this blog post](https://medium.com/@tonistiigi/experimenting-with-rootless-docker-416c9ad8c0d6).

We'll be setting up an environment and do a demo of how docker rootless mode works

## Setup OS

We'll use [Vagrant] and [VirtualBox] to get a clean OS that can be run on any other OS.

[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/

First clone this repo locally and inside the repo do:

* Start the OS:

```sh
vagrant up
```

* SSH in the VM

```sh
vagrant ssh
```

* Install Dependencies

```sh
sudo apt-get install -y uidmap aufs-tools cgroup-lite
sudo modprobe ip_tables
sudo echo 'ip_tables' >> /etc/modules
EOF
```

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
