# Grep Invert Search

We can invert search in `grep` by using `-v, --invert-match` argument, `-v` only displays lines which does not have pattern in it.

> Invert the sense of matching, to select non-matching lines.

## Example

```bash
$ seq 5 | grep -v 3
1
2
4
5
```

Here, we are asking `grep` to hide pattern, which is "3" in this case, and display everything else.

***Source: [Linuxize](https://linuxize.com/post/how-to-use-grep-command-to-search-files-in-linux/#invert-match-exclude)***
