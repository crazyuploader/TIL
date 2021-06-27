# Install VS Code on a Linux Server

To install VS Code on a Remote/Local Linux Server and access it over browser, we have to install [`code-server`](https://github.com/cdr/code-server).

## Installation Steps

### Step 1

Firstly, we have to install `code-server`, we can use their automated script to do that, run -

```bash
$ curl -fsSL https://code-server.dev/install.sh | sh
```

**Note:** We can also add `code-server` to systemctl by running `sudo systemctl enable --now code-server@$USER` to automatically run at boot.

### Step 2

For Remote access, we can setup SSL easily by setting up `caddy` server as reverse proxy.

To install `caddy` server, run -

```bash
$ echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" \
    | sudo tee -a /etc/apt/sources.list.d/caddy-fury.list
$ sudo apt update
$ sudo apt install caddy
```

In `/etc/caddy/Caddyfile` make following changes to setup `caddy` to create a proxy for us -

```
mydomain.com

reverse_proxy 127.0.0.1:8080
```

Reload `caddy` server by running -

```bash
$ sudo systemctl reload caddy
```

Code Server should now be live at `https://example.com`

**_Source: [HowtoForge](https://www.howtoforge.com/tutorial/how-to-install-code-server-ide-on-ubuntu-2004/)_**

**Reference(s)**

- [Code Server](https://github.com/cdr/code-server)
- [Caddy Server](https://caddyserver.com/docs/download#debian-ubuntu-raspbian)
