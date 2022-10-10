# Add Swap Space To System

We can add swap space to the system by following method -

## Check for existing swap space

```bash
$ sudo swapon --show
```

## Create a new swap space

```bash
$ sudo fallocate -l 2G /swapfile
$ sudo chmod 600 /swapfile
```

## Enable swap space

```bash
$ sudo mkswap /swapfile
$ sudo swapon /swapfile
```

## Verify that the swap space exists

```bash
$ sudo swapon --show
```

## Make swap persistent upon restart

```bash
$ echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

**_Source: [How To Add Swap Space on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04)_**
