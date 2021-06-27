# Install Docker

We can install `docker` by using its shell script.

### Easy Install (Using Script)

```bash
$ curl -sL https://get.docker.com | bash -
```

### Manual Install

Setup Official Repositories

```bash
$ sudo apt-get update
$ sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    lsb-release
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
```

Installing Docker

```bash
$ sudo apt-get update
$ sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```

**Reference(s)**

- [Docker Docs](https://docs.docker.com/engine/install/ubuntu/)
