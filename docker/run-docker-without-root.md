# Run Docker without Root

To run Docker as non-root user, we can add our user to "docker" group, to do run this -

```bash
$ sudo usermod -aG docker ${USER}
```

**Reference(s)**

- https://docs.docker.com/engine/install/linux-postinstall/
