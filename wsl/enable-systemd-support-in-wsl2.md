# Enable Systemd Support in WSL2

Since, WSL2 Ubuntu is a trimmed down version of Ubuntu, it doesn't come with systemd support. However, we can make it work using systemd hack.

***NOTE:*** WSL 2 Only

**Usage**

Run this script in WSL2 (Ubuntu):

```bash
git clone https://github.com/DamionGans/ubuntu-wsl2-systemd-script.git
cd ubuntu-wsl2-systemd-script/
bash ubuntu-wsl2-systemd-script.sh
```

Then run (in Windows):

```shell
wsl --shutdown
```

Test systemd by running:

```bash
jungle@DESKTOP-B73I3A0:~$ ps 1
    PID TTY      STAT   TIME COMMAND
      1 ?        Ss     0:02 /lib/systemd/systemd --system-unit=basic.target
```

Enjoy systemd hack on WSL2!

***Source: [GitHub](https://github.com/DamionGans/ubuntu-wsl2-systemd-script)***
