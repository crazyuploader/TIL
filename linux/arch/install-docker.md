# Install Docker

To install Docker on Arch Linux, run following commands -

## Install Docker

```bash
$ sudo pacman -S docker
```

## Start Docker Service

```bash
$ sudo systemctl start docker.service
```

## Add User to Docker Group (optional)

```bash
$ sudo usermod -aG docker $USER
```

**_Source: [LinuxForDevices](https://www.linuxfordevices.com/tutorials/linux/install-docker-on-arch)_**
