# Run MTR on MacOS without sudo

Coming from Linux/Windows it does feel awkward to run `mtr` with `sudo` each time if you want to quickly diagnosis a host quickly. Since, `mtr` require access to raw packets, considering MacOS permissions, it can't access those raw packets without `sudo`, fortunately we can fix that by running a few commands -

## Step 1: Find path of mtr executables

First we need to find the path of `mtr-packet` which is another program which handles the networking and does the actual tracing.

```bash
❯ command -v mtr-packet
/opt/homebrew/sbin/mtr-packet
```

Here we can see, it's residing at `/opt/homebrew/sbin` directory, but that's not the true location of it, let's figure out why!

```bash
❯ ls -lsh $(command -v mtr-packet)
0 lrwxr-xr-x 1 jugal admin 34 Aug 31 23:28 /opt/homebrew/sbin/mtr-packet -> ../Cellar/mtr/0.96/sbin/mtr-packet
```

Ah, we can see `/opt/homebrew/sbin/mtr-packet` is actually linked to `/opt/homebrew/Cellar/mtr/0.96/sbin/mtr-packet`, that's where we are going to apply the necessary permissions.

## Step 2: Change ownership of executables to root

Change ownership of `mtr-packet` to `root` user by issuing following command -

```bash
❯ sudo chown root /opt/homebrew/Cellar/mtr/0.96/sbin/mtr-packet
```

## Step 3: Set SUID bit

We also need to set SUID (Set User ID) to `4755` -

```bash
❯ sudo chmod 4755 /opt/homebrew/Cellar/mtr/0.96/sbin/mtr-packet
```

Run the `mtr` command again, and it should work without prompting you for `sudo` password.

**_Reference(s):_**

- [Dave's Network Blog](https://blog.dave-bell.co.uk/2020/01/06/using-mtr-on-os-x-without-sudo/)
- [Dzubayyan's Articles](https://article.masdzub.com/how-to-use-mtr-without-sudo-macos.aspx/)
