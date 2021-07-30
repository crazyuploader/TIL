# Change Hostname Of A System

Typically, hostname of a system is stored in `/etc/hostname`, and we can change that by writing a new hostname in `/etc/hostname` file.

### Steps

1. Edit `/etc/hostname` with any text editor such as nano or vim, and replace the exisitng hostname -

```bash
$ sudo nano /etc/hostname
```

2. Save and reboot -

```bash
$ sudo reboot
```

To display current hostname, we can use `hostname` command.

***Source: [CyberCiti](https://www.cyberciti.biz/faq/ubuntu-change-hostname-command/)***
