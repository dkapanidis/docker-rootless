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

* Setup OS

In order to prepare a clean Ubuntu OS for Docker rootless mode, some minor tweeks are necessary:

```sh
/vagrant/scripts/setup.sh
```

# Install Docker Rootless

To install Docker rootless mode normally the following should be used:

```sh
curl -sSL https://get.docker.com/rootless | sh
```

Same script pointing to release `v19.03.1` is located locally:

```sh
/vagrant/scripts/rootless.sh
```
