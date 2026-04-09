# Clear Journald Logs

Journalctl can accumulate a lot of system logs over time being, we can clear the logs using `--vacuum-time` or `--vacuum-size` argument.

## Clear Logs by Time

Only retain last 3 days of logs:

```bash
journalctl --vacuum-time=3d
```

## Clear Logs by Size

Only retain 1 GB of logs:

```bash
journalctl --vacuum-size=1G
```

## Set Max Log Size

You can configure the max log size in `/etc/systemd/journald.conf`:

```ini
SystemMaxUse=1G
```

Then restart the journald service:

```bash
systemctl restart systemd-journald
```
