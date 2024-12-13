# Create A Systemd Timer

Systemd timers are a powerful alternative to `cron` for scheduling tasks, especially when you want better integration with system events like startup or specific conditions. Example of creating a simple systemd timer is given below -

## Example: Running a Command Automatically After System Boot

### 1. Create a systemd service file, for example: **_test_timer.service_**

```
[Unit]
Description=Example Systemd Service File.

[Service]
Type=oneshot
User=<username>
ExecStart=/usr/bin/ping -c 10 google.com

[Install]
WantedBy=multi-user.target
```

### 2. Now, create a timer file with the same name, for example: **_test_timer.timer_**

```
[Unit]
Description=Example Systemd Timer.

[Timer]
OnBootSec=5m

[Install]
WantedBy=timers.target
```

**_Note:_** `OnBootSec=5m` ensures the service starts 5 minutes after the system boots up. Adjust the value based on your needs (e.g., `10s` for 10 seconds)

### 3. Enable & Start the Systemd Timer

```
sudo systemctl enable test_timer.timer
sudo systemctl start test_timer.timer
```

To check if the Systemd timer is enabled, we can use `systemctl list-timers` command to list out the various Systemd timer enabled on the system.

**_Source(s):_**

- [ArchWiki](https://wiki.archlinux.org/title/Systemd/Timers)
- [LinuxConfig](https://linuxconfig.org/how-to-schedule-tasks-with-systemd-timers-in-linux)
