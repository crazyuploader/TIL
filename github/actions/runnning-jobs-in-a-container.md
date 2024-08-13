# Running Jobs in a Container

We can run jobs in a container in the following way -

## 1. Running a job within a container

```yaml
name: My CI
on:
    push:
        branches: [main]
jobs:
    container-job:
        runs-on: ubuntu-latest
        container:
            image: crazyuploader/minimal_ubuntu:latest
            env:
                IS_PRODUCTION: true
...
```

If no other options are specified, we can simply write -

```yaml
jobs:
    container-job:
        runs-on: ubuntu-latest
        container: crazyuploader/minimal_ubuntu:latest
...
```

## 2. Defining credentials for a container registry

```yaml
container:
    image: crazyuploader/private_container
    credentials:
        username: ${{ secrets.USERNAME }}
        password: ${{ secrets.PASSWORD }}
...
```

***Reference: [GitHub Actions - GitHub Docs](https://docs.github.com/en/actions/writing-workflows/choosing-where-your-workflow-runs/running-jobs-in-a-container)***
