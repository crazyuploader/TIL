# Setup Docker Buildx For Multi Arch builds

By default `buildx` plugin is availabe on Docker Desktop, and if Docker was installing using [deb](https://docs.docker.com/engine/install/) packages. In case it is not installed, we can get it from [Docker buildx - GitHub](https://github.com/docker/buildx/releases/latest) and put it to `~/.docker/cli-plugins` directory, and make it executable using the following command -

```bash
$ chmod +x ~/.docker/cli-plugins/docker-buildx
```

To be able to build Multi-Arch Docker Images -

```bash
$ docker run --privileged --rm tonistiigi/binfmt --install all
$ docker buildx create --name multibuilder
$ docker buildx use multibuilder
$ docker buildx inspect --bootstrap
```

And that's it! Now we can run `docker buildx` on our Dockerfile(s) to build them for Multi Architecture.

**Source(s)**

- [CircleCI Documentation](https://cirrus-ci.org/guide/docker-builder-vm/#multi-arch-builds)
- [Docker Docs](https://docs.docker.com/buildx/working-with-buildx/)
