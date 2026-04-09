# Run Docker using Colima in MacBook

Docker Desktop can be quite resource hungry and full with bloatware, to have a minimal Docker setup, we can use [`Colima`](https://github.com/abiosoft/colima).

## Installation

To install Colima, we can use brew:

```zsh
brew install colima docker docker-compose
```

## Configuring the VM

First we need to create a Virtual Machine (VM) which will run Docker, to initalize it using colima, run this command for M1 chips:

```zsh
colima start --cpu 4 --memory 5 --disk 60 --vm-type vz --vz-rosetta
```

Or Intel chips:

```zsh
colima start --cpu 4 --memory 5 --disk 60
```

Check status with:

```zsh
colima status
```

## Change Docker Context

List and switch Docker's context using:

```zsh
docker context ls
docker context use colima
```

To make it permanent, add `colima` context to `~/.zshrc`:

```zsh
echo 'export DOCKER_CONTEXT=colima' >> ~/.zshrc
source ~/.zshrc
```

## Configure Docker Plugins

Docker Compose can work fine without this step, but I prefer using `docker compose` instead of `docker-compose`, in order to do that, run:

```zsh
mkdir -p ~/.docker/cli-plugins
ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
```

Check Compose version:

```zsh
docker compose version
```

## Manage Colima

```zsh
colima start
colima stop
colima restart
```

Make it start automatically upon boot:

```zsh
brew services start colima
```

**_Reference(s):_**

- [Colima - Official Docs](https://colima.run/docs/getting-started/)
