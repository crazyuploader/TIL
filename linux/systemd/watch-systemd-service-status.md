# Watch Systemd Service Status

Running `sudo systemctl status {A_SERVICE}` again and again to watch latest logs of a web server can be cumbersome. Instead we can watch its status continously using `watch` command.

## Example

```bash
$ sudo watch systemctl status caddy
```

**_Source: [Unix - StackExchange](https://unix.stackexchange.com/questions/555176/watch-systemd-service-status-with-systemctl)_**
