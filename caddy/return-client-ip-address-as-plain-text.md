# Return Client IP Address As Plain Text

In Caddy Server, we can use [Template(s)](https://caddyserver.com/docs/json/apps/http/servers/errors/routes/handle/templates/) to return Client IP Address as plain text, using `.RemoteIP`, Caddyfile example is given below -

Caddyfile:

```yaml
example.com {
templates
header Content-Type text/plain
respond "Hello from IPv6, your IPv6 is -> {{.RemoteIP}}"
encode zstd gzip
}
```

**_Source: [Caddy Community](https://caddy.community/t/caddy-server-that-returns-only-ip-address-as-text/6928)_**
