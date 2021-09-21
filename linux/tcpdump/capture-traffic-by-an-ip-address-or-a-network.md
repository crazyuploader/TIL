# Capture Traffic By An IP Address Or A Network

Tcpdump can filter out traffic based on IP address, and a Network, examples below.

## Capture Traffic by an IP Address

To capture traffic for an IP address, we can simply use `host` argument.

```bash
$ sudo tcpdump host 1.1.1.1
```

This will capture both outgoing, and incoming traffic for an IP address, `1.1.1.1` in example above.

## Capture Traffic from one direction

If you only want to capture traffic from one direction, we can use `src` or `dst` argument.

```bash
$ sudo tcpdump src 1.1.1.1
$ sudo tcpdump dst 1.1.1.1
```

## Capture Traffic by a Network

To capture traffic from a network or subnet, we can use `net` argument.

```bash
$ sudo tcpdump net 1.2.3.0/24
```

**_Source: [Danielmiessler](https://danielmiessler.com/study/tcpdump/#protocol)_**
