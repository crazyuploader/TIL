# Check If A Port Is In Use

We can check if a port is in use or not, by following ways in Linux.

## Option 1

`lsof`

```bash
sudo lsof -i -P -n | grep LISTEN
```

Also, we can check a specific port by running -

```bash
sudo lsof -i:{PORT_NUMBER}
```

## Option 2

`netstat`

```bash
sudo netstat -tulpn | grep LISTEN
```

## Option 3

`nmap`

```bash
sudo nmap -sTU -O {IP_ADDRESS}
```

**_Source: [CyberCiti](https://www.cyberciti.biz/faq/unix-linux-check-if-port-is-in-use-command/)_**
