# Screen

screen - screen manager with VT100/ANSI terminal emulation

> Screen is a full-screen window manager that multiplexes a physical terminal between several processes (typically interactive shells). Each virtual terminal provides the functions of a DEC VT100 terminal and, in addition, several control functions from the ISO 6429 (ECMA 48, ANSI X3.64) and ISO 2022 standards (e.g. insert/delete line and support for multiple character sets). There is a scrollback history buffer for each virtual terminal and a copy-and-paste mechanism that allows moving text regions between windows.

## Usage

- New Session

```bash
screen
```

- Detach Session

Press `ctrl + a` and `d` immediately after it.

- List Session(s)

```bash
screen -ls
```

- Attach Session

Detached Session can be attached by running `screen -r` but if multiple session(s) are there, run `screen -r <pid.tty.host>`.

**_Source: [TecMint](https://www.tecmint.com/keep-remote-ssh-sessions-running-after-disconnection/)_**
