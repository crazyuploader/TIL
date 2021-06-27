# Concatenate Strings

## Option 1

```bash
$ VAR1="Hello"
$ VAR2="World"
$ VAR3="${VAR1}, ${VAR2}"
$ echo "${VAR3}"
```

## Option 2

We can also use **+=** operator to concatenate strings

```bash
$ VAR1="Hello, "
$ VAR2="World!"
$ VAR1+="${VAR1}"
$ echo "${VAR1}"
```

**_Source: [Linuxize](https://linuxize.com/post/bash-concatenate-strings/)_**
