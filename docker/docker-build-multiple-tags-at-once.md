# Docker Build Multiple Tags At Once

We can add multiple tags at once on build by:

```bash
docker build --tag test-image:tag01 --tag test-image:tag02 .
```

Now that the image is built with multiple tags, we can push all tags at once using `--all-tags` flag.

## Example

```bash
docker build --tag test-image:tag01 --tag test-image:tag02 .
docker push test-image --all-tags
```

**_Source(s):_**

- [StackOverFlow](https://stackoverflow.com/a/35565384)
- [StackOverFlow](https://stackoverflow.com/a/56905333)
