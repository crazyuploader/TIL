# Create A Service

To run a script at system startup, we can use **Systemd** which is an init system for Ubuntu, and many other Linux Distros.

## Usage

First of all, we need to create a service which can be done creating a system unit file with `.service` extension in `/etc/systemd/system` directory, with the followig content -

```
[Unit]
Description=My Custom Startup Script

[Service]
ExecStart={PATH_TO_SCRIPT}

[Install]
WantedBy=multi-user.target
```

For example `/etc/systemd/system/scripter.service` can be such file. Now to start the service, we can just run `sudo systemctl start scripter`, and `sudo systemctl stop scripter` to stop the service.

To enable the service at system startup, run `sudo systemctl enable scripter`.

**_Source: [Transang](https://transang.me/three-ways-to-create-a-startup-script-in-ubuntu/)_**
