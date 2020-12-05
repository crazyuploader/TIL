# Shell Formatter

We can format our shell scripts by using [`shfmt`](https://github.com/mvdan/sh)

# Usage

```bash
docker run --rm -v $PWD:/mnt -w /mnt mvdan/shfmt {ARGS...}
```

**Example**

```bash
docker run --rm -v $PWD:/mnt -w /mnt mvdan/shfmt -w .
```

This will run `shfmt` and write changes to all the files in current directory

**Reference(s)**

- [shfmt on GitHub](https://github.com/mvdan/sh)
