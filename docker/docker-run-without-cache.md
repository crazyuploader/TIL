# Docker Run Without Cache

Sometimes, we don't need Docker build cache, and for those cases we can use `--no-cache` option.

## Example

```bash
$ docker build --no-cache --tag test .
```

**_Source: [StackOverFlow](https://stackoverflow.com/a/35595021)_**
