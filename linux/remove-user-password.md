# Remove User Password

### Background

Since, I recently removed my dual boot setup, I started using Ubuntu in Windows 10 WSL 2. Initially had setup password for the same, and now since I run some Docker images in it (Docker is supported in WSL 2), and due to the lack of "systemd" in WSL for Windows, I needed some way to run Docker at system boot, one way of doing was to use `systemd` which manages services for various Linux Distros at boot, but while trying to run `sudo systemctl enable docker`, I had the following error -

```
System has not been booted with systemd as init system (PID 1). Can't operate.
```

Turns out WSL doesn't have `systemd` yet, so the only way to run Docker service is to use `service` command which is given below -

```bash
sudo service docker start
```

The only way for now I see Docker running as soon as I open Ubuntu in WSL is to put the above command in `~/.bashrc` file, and for Windows to run WSL upon login is simple, using Task Scheduler. Dirty tricks indeed, but as long as my work is done nothig else matters. The command I had to put in `~/.bashrc` file was -

```bash
sudo service docker start
```

### Solution

To properly remove the password of the current user, and making sure `sudo` works with no password, we need to enable `NOPASSWORD` first. Without it, sudo will ask for password even if we don't have one.

> To do so, open the sudoers configuration file with `sudo visudo`, and add the following line to the file, replacing jungle with your username:

```
jungle ALL=(ALL) NOPASSWD:ALL
```

And what's left for us to remove the password of the current user is to run:

```bash
sudo passwd -d `whoami`
```

**_Original Question on [StackOverFlow here](https://askubuntu.com/questions/281074/can-i-set-my-user-account-to-have-no-password)_**.
