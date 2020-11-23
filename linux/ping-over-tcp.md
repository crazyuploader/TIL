# Ping over TCP

`ping` can't do TCP ping so in order to run ping for TCP we can use `tcpping`.

## Installation

Firstly we have to make sure `tcptraceroute` is installed by running -

```bash
apt-get install -y tcptraceroute
```

Then to install tcpping, run -

```bash
wget http://www.vdberg.org/~richard/tcpping -O /usr/bin/tcping
chmod 755 /usr/bin/tcping
```

**_Note:_** I am saving `tcpping` as `tcping` here

### Example

```bash
jungle@DESKTOP-B73I3A0:~$ tcping -x 5 google.com
seq 0: tcp response from del11s07-in-f14.1e100.net (216.58.200.206) [open]  60.454 ms
seq 1: tcp response from del11s07-in-f14.1e100.net (216.58.200.206) [open]  78.215 ms
seq 2: tcp response from del11s07-in-f14.1e100.net (216.58.200.206) [open]  55.457 ms
seq 3: tcp response from del11s07-in-f14.1e100.net (216.58.200.206) [open]  53.049 ms
seq 4: tcp response from del11s07-in-f14.1e100.net (216.58.200.206) [open]  48.375 ms
```

**_Source: [GitHub Gist](https://gist.github.com/cnDelbert/5fb06ccf10c19dbce3a7)_**
