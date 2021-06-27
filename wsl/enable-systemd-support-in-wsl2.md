# Enable Systemd Support in WSL2 (Obsolete)

Since, WSL2 Ubuntu is a trimmed down version of Ubuntu, it doesn't come with systemd support. However, we can make it work using systemd hack.

**_NOTE:_** WSL 2 Only

**Usage**

Run this script in WSL2 (Ubuntu):

```bash
$ git clone https://github.com/DamionGans/ubuntu-wsl2-systemd-script.git
$ cd ubuntu-wsl2-systemd-script/
$ bash ubuntu-wsl2-systemd-script.sh
```

Then run (in Windows):

```shell
wsl --shutdown
```

Run WSL again and test systemd by running:

```bash
$ ps 1
```

You should see something like this:

```bash
$ jungle@DESKTOP-B73I3A0:~$ ps 1
    PID TTY      STAT   TIME COMMAND
      1 ?        Ss     0:02 /lib/systemd/systemd --system-unit=basic.target
```

Enjoy systemd hack on WSL2!

**_Source: ~GitHub~_**
