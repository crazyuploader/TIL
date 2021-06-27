# Fix Windows And Linux Different Time Issue

While dual booting `Windows` and `Linux` there is time difference between both of the OSes, this arises because of the fact that while `Linux` saves time on motherboard's clock in _UTC_, `Windows` save it in _Local Time_, this makes one of Operating System to have a different/wrong time than it actually is (Windows for me personally).

This can be fixed by either setting `Linux` to use _Local Time_ instead of _UTC_ or setting `Windows` to use _UTC_ time. Since setting this on `Windows` can be a little complicated, we can simply run one command on `Linux` and we're good to go!

## Process

We can set `Linux` to use _Local Time_ by running -

```bash
$ timedatectl set-local-rtc 1 --adjust-system-clock
```

Check current settings by running -

```
$ timedatectl
```

**_Source: [HowToGeek](https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/)_**
