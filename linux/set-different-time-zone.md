# Set Different Time Zone

We can change time zone temporarily by using `TZ` Environment Variable but for permanent change we can use following ways to set different time zone in linux.

## Using timedatectl

```bash
sudo timedatectl set-timezone {TIME_ZONE}
```

**Example**

```bash
sudo timedatectl set-timezone Asia/Kolkata
```

## Using symbolic link

Firstly, we to remove current symbolic link by -

```bash
sudo rm -rf /etc/localtime
```

Then subtitute your time zone in following command

```bash
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
```

Verify it by running `date` command

**_Source: [Linuxize](https://linuxize.com/post/how-to-set-or-change-timezone-in-linux/)_**
