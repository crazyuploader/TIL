# Change Hostname Of A System

Typically, hostname of a system is stored in `/etc/hostname`, and we can change that by writing a new hostname in `/etc/hostname` file.

## Method 1

1. Edit `/etc/hostname` with any text editor such as nano or vim, and replace the existing hostname -

```bash
$ sudo nano /etc/hostname
```

2. Save and reboot -

```bash
$ sudo reboot
```

## Method 2

Using `hostnamectl` command we can also set hostname, following is an example -

```
$ sudo hostnamectl set-hostname Dell-G15-5515
$ sudo reboot
```

To display current hostname, we can use `hostname` command.

**_Source: [CyberCiti](https://www.cyberciti.biz/faq/ubuntu-change-hostname-command/)_**
