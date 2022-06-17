# Ccze Work With Cat Command

By default, `ccze` end up exiting immediately without leaving colorized output on the screen if piped to `cat` command. Use `--mode=ansi` to disable this behavior.

## Example

```bash
$ cat /var/log/auth.log | ccze --mode=ansi
```

***Source: [StackOverFlow](https://unix.stackexchange.com/a/278283)***
