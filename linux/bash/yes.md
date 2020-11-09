# Yes

yes - output a string repeatedly until killed

> Repeatedly output a line with all specified STRING(s), or 'y'.

## Usage

- Print y repeatedly

```bash
yes
```

- Print y repeatedly & pipe to a command

```bash
yes | apt-get upgrade
```

- Print custom string & pipe to a command

```bash
yes "n" | apt-get upgrade
```

**Reference(s)**

- [Man7](https://man7.org/linux/man-pages/man1/yes.1.html)
