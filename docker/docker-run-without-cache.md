# Docker Run Without Cache

Sometimes, we don't need Docker build cache, and for those cases we can use `--no-cache` option.

## Example

```
docker build --no-cache --tag test .
```

***Source: [StackOverFlow](https://stackoverflow.com/a/35595021)***
