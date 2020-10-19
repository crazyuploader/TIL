# Pass Arguments while Piping

We can pass arguments to bash while piping like:

```bash
bash -s -- <ARG>
```

## Example

```bash
curl -s http://wget.racing/nench.sh | bash -s -- -q
```

**_Source: https://stackoverflow.com/a/53605439_**
