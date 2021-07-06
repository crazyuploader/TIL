# Changing Timezone On Alpine

To be able to change Timezone on Alpine, we first need to make sure `alpine-conf` package is added, as by default Alpine Base Image doesn't come with unnecessary packages to keep Image size as low as possible.

## Example

```bash
$ apk add --update alpine-conf tzdata
```

This will add necessary setup scripts on Alpine. And to actually change Timezone, we can run following command -

```bash
$ setup-timezone -z IST
```

This sets the Timezone to IST, and we can now remove setup scripts package if required by optionally running -

```bash
$ apk del alpine-conf
```

**Reference(s)**

- [AlpineLinux - Wiki](https://wiki.alpinelinux.org/wiki/Alpine_setup_scripts#setup-timezone)
- [GitHub](https://github.com/gliderlabs/docker-alpine/issues/196#issuecomment-250826099)
