# Remove Empty Lines

We can remove empty lines from the output using `grep` in following ways -

## Option 1

```bash
$ grep -v '^[[:space:]]*$' {FILE}
```

## Option 2

```bash
$ grep . {FILE}
```

This can be used to make things simple, and easy if Windows line-endings aren't concerned.

**_Source: [StackOverFlow](https://stackoverflow.com/a/3432574)_**
