# System Upgrade

**Ugrade all installed packages**

```bash
$ sudo apt-get update
$ sudo apt-get upgrade -y
```

**Reboot**

```bash
$ sudo reboot
```

**Remove unused packages and old kernel versions**

```bash
$ sudo apt --purge autoremove
```

**Install Ubuntu update tool**

```bash
$ sudo apt install update-manager-core
```

**Start Upgrade**

```bash
$ sudo do-release-upgrade
```

**_Note:_** If it shows `There is no development version of an LTS available.`, run `sudo do-release-upgrade -d`

**System Restart**

```bash
$ sudo reboot
```

**Verify Distro**

```bash
$ lsb_release -a
```

**Enabled disabled 3rd party repo**

While upgrading distro 3rd party repositories can be disabled by Ubuntu for system stability, and these can be enabled again by looking into `/etc/apt/sources.list` file.

**_Source: [CyberCiti](https://www.cyberciti.biz/faq/upgrade-ubuntu-18-04-to-20-04-lts-using-command-line/)_**
