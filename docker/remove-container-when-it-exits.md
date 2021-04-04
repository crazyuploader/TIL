# Remove Container When It Exists

By default, Docker doesn't remove containers when they exit, this can lead storage getting full. To remove a container as soon as it exits, we can pass `--rm` argument in `docker run` command.

## Usage

```bash
docker run --rm ubuntu echo "Hello Docker"
```

***Source: [Docker Docs](https://docs.docker.com/engine/reference/run/#clean-up---rm)***
