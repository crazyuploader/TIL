# Enable SSH Server

Sometimes, we need to access our machine remotely, and that is where SSH (Secure Shell) comes into play. Enabling SSH Server on Ubuntu is straightforward, we just need to have `openssh-server` package installed which we can install by -

### Install SSH Server

```bash
$ sudo apt-get update
$ sudo apt-get install -y openssh-server
```

To check whether or not the SSH Server is running run -

```bash
$ sudo systemctl status ssh
```

### Open port for SSH Server in Firewall

```bash
sudo ufw allow ssh
```

## Connecting to SSH Server

```bash
ssh {USER}@{MACHINE_IP}
```

**Note:** In case `ssh` command is not available, one need to install `openssh-client` package.

***Source: [Linuxize](https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-20-04/)***
