# Changing User Password In Shell Script

In order to change in shell scripts, we have two options which are given below.

## Option 1

Using `passwd`

```
echo -e "{NEW_PASSWORD}\n{NEW_PASSWORD} | passwd {USER}
```

## Option 2

Using `chpasswd`

```
echo "{USER}:{NEW_PASSWORD} | chpasswd
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/11787889)_**
