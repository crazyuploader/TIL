# Kill A Process In Linux

To kill a process, first we need to know its process ID (PID), to do that we can use `pidof` command.

## Find PID of a Process

```bash
pidof {PROCESS_NAME}
```

## Kill a Process

```bash
kill {PROCESS_ID}
```

### Kill all the process with a program name

```bash
killall {PROGRAM_NAME}
```

### Using htop

We can also kill a process interactively using `htop` command.

**Reference(s)**

- [StackOverFlow](https://askubuntu.com/questions/104903/how-do-i-kill-processes-in-ubuntu)
- [Man7](https://man7.org/linux/man-pages/man1/htop.1.html)
