# Show Disk Usage By Directories

We can use `ncdu` to see disk usage interactively in command-line only.

> ncdu (NCurses Disk Usage) is a curses-based version of the well-known 'du', and provides a fast way to see what directories are using your disk space.

**Usage**

```bash
ncdu {OPTIONS} {DIRECTORY}
```

**Example**

```
ncdu -x /
```

Will show usage of `/` (root) directory.

***Source: [AskUbuntu](https://askubuntu.com/a/305057)