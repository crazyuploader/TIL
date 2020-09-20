# Increase Limit of Inotify Watchers

To check current limit of inotify watchs:

```bash
cat /proc/sys/fs/inotify/max_user_watches
```

To change Inotify watch limit:

```bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```
