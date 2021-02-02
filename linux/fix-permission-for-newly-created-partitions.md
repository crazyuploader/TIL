# Fix Permission For Newly Created Partitions

For an `ext4` like file system, we need to change permissions before an user is able to access it, we can do so by running -

```bash
sudo chown -R $USER:$USER /data
```

Where `/data` is the location of the mounted drive.

***Source: [AskUbuntu](https://askubuntu.com/a/703676)***
