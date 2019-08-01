# Docker Rootless Mode

For details about Docker Rootless check [this blog post](https://medium.com/@tonistiigi/experimenting-with-rootless-docker-416c9ad8c0d6) or [this slideshare](https://es.slideshare.net/AkihiroSuda/dockercon-2019-hardening-docker-daemon-with-rootless-mode)

We'll be setting up an environment and do a demo of how docker rootless mode works.

We'll use [Vagrant] and [VirtualBox] to get a clean OS that can be run on any other OS.

[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/

First clone this repo locally and enter inside the checked out repo on CLI. The rest of commands are to be executed there.

## Start VMs

There are two VMs `rootless` and `rootful` that can be started with the following command:

```sh
vagrant up
```

> Both are clean Ubuntu OS Xenial64.

## Install Docker rootless

To install Docker rootless mode normally the following should be used:

```sh
vagrant ssh rootless
# Install Dependencies
/vagrant/scripts/setup.sh
# Install Docker rootless
curl -sSL https://get.docker.com/rootless | sh
```

Same script pointing to release `v19.03.1` is located locally:

```sh
/vagrant/scripts/rootless.sh
```

## Install Docker rootful

```sh
vagrant ssh rootful
curl -fsSL https://get.docker.com -o get-docker.sh
```

## Start Docker

On one console run docker daemon:

```sh
export PATH=/home/vagrant/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
```

On another console connect to the daemon:

```sh
export PATH=/home/vagrant/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
docker run hello-world
```
