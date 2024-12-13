# Prevent Systemd Timers from Overlapping

Sometimes, if we have a repeative task running with Systemd timer, imagine a scenario where before the process was even finished, the timer starts running yet another process, and this is where the Systemd timer can have overlapping processes, and to avoid this, we can use `flock` command, example below -

## Example: A Simple Systemd Service File

```
[Unit]
Description=Rclone Sync for an S3 Bucket.
Wants=network-online.target
After=network-online.target

[Service]
Type=oneshot
User=ubuntu
Group=ubuntu
ExecStart=/usr/bin/flock /var/lock/rclone-sync.lock -w 30 /usr/bin/rclone sync --progress s3-bucket:content /home/ubuntu/rclone-sync
```

Here, the `flock` command runs rclone sync with a lock-file at `/var/lock/rclone-sync.lock`, now if the earlier execution wasn't finished, the lock file will be there, and the `flock` command would wait for 30 seconds (courtesy to `-w 30` argument) before it exits with an error.

**_Source(s):_**

- [CleverUptime](https://cleveruptime.com/docs/commands/flock)
- [Mattias Geniar Blog](https://ma.ttias.be/prevent-cronjobs-from-overlapping-in-linux/)
- [Bashscript.net](https://bashscript.net/using-flock-in-bash-scripts-manage-file-locks-and-prevent-task-overlaps/)
