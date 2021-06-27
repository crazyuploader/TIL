# Change Default Shell

Default shell can be changed by using `chsh` command.

## Usage

To see available shells -

```bash
cat /etc/shells
```

To see current shell -

```bash
echo $SHELL
```

To **finally** change shell -

```bash
chsh -s /path/to/shell
```

To see your new shell -

```bash
echo $SHELL
```

It should be changed now, in case `chsh` throws something like `you may not change the shell for ${USER}`, follow along!

## Using `usermod`

To see current shell -

```bash
grep ${USER} /etc/passwd
```

To change shell -

```bash
$ sudo usermod --shell /bin/bash nameofuser
```

Verify it by running -

```bash
$ grep ${USER} /etc/passwd
```

**_Source: [StackOverFlow](https://unix.stackexchange.com/a/558971)_**
