# Caddy Write Logs to a File

We can write log files to a file using `log` directive in Caddyfile. Example is given below -

```
mywebsite.com {
    log {
        output file /var/log/caddy/mywebsite.com-access.log
    }
}
```

***Source: [Future Studio](https://futurestud.io/tutorials/caddy-configure-logging-and-access-logs)***

***Reference: [Log Caddyfile Directive - Caddy Server Documentation](https://caddyserver.com/docs/caddyfile/directives/log)***
