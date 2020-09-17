# Remove Unused Data

`docker system prune` frees up storage by deleting unused data.

> Remove all unused containers, networks, images (both dangling and unreferenced), and optionally, volumes.

```bash
$ docker system prune

WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all build cache
Are you sure you want to continue? [y/N] y
```
