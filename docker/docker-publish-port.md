# Docker Publish Port

By default Docker does not expose Container's Port to the Host, to do so we can `--publish` or `-p` flag, which exposes Container's Port(s) to Host.

## Example

```bash
docker run -d -it \
           -p 43210:43210/udp \
           --name bombsquad \
           crazyuploader/bombsquad
```

Here, we're exposing `UDP Port 43210` to the Host.

**_Source: [Docker Docs](https://docs.docker.com/config/containers/container-networking/#published-ports)_**
