# Grep On Continous Stream

We can use `--line-buffered` argument in `grep` command.

## Usage

```bash
tail -f file | grep --line-buffered my_pattern
```

***Source: [StackOverFlow](https://stackoverflow.com/a/7162898)***
