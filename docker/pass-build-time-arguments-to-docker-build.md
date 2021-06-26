# Pass Build Time Arguments To Docker Build

While building Dockerfile(s) we can pass and use Environment variables such as -

```dockerfile
ARG VARIABLE1
ARG VARIABLE2

RUN echo "Value of first Variable = ${VARIABLE1}" && \
    echo "Value of second Variable = ${VARIABLE2}"
```

And running `docker build` command as following -

```bash
docker build -t {IMAGE_NAME}:{IMAGE_TAG} \
                --build-arg {VARIABLE1}="Some value" \
                --build-arg {VARIABLE2}="Some other value"
```

***Source: [Bits and Picces](https://blog.bitsrc.io/how-to-pass-environment-info-during-docker-builds-1f7c5566dd0e)***
