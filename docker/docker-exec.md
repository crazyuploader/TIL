# Docker Exec (docker exec)

`docker exec`

> Run a command in a running container

**Usage**

```bash
docker exec {options} {container} {command} {ARG...}
```

**Example**

```bash
root@ip-172-31-36-54:~# docker exec -it 0ce6bc8abc43 /bin/bash
root@0ce6bc8abc43:~# whoami
root
```

***Source: [Docker Docs](https://docs.docker.com/engine/reference/commandline/exec/)***
