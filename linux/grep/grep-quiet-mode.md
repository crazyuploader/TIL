# Grep Quiet Mode

We can use `-q, --quiet` argument which tells `grep` to run in quiet mode and not display anything on standard output. If a match is found, `grep` will exit with a status code of `0`.

## Example

```bash
$ seq 5 | grep -q 3
$ echo $?
0
```

Here, since `grep` found pattern "3", it exited with `0` exit code without displaying anything.

```bash
$ seq 5 | grep -q 6
$ echo $?
1
```

Here, `grep` had non-zero exit code since pattern "6" could not be found.

**_Source: [Linuxize](https://linuxize.com/post/how-to-use-grep-command-to-search-files-in-linux/#quiet-mode)_**
