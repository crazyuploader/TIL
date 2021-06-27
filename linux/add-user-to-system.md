# Add User To System

To add a new user to the system, we can use `useradd` command.

## Create A User

### Step 1

```bash
$ sudo useradd -m {USER_NAME}
```

**Note:** `-m` or `--create-home` argument here creates home directory as well.

### Step 2

To be able to login into the new user, we need to set password first.

```bash
$ sudo passwd {USER_NAME}
```

## Create A User with specific login shell

To create a user with specific login shell, we can pass `-s` or `--shell` argument.

```bash
$ sudo useradd -s /usr/bin/zsh {USER_NAME}
```

## Add User to sudo group

In order to run commands as root, we can add user to `sudo` group by using `usermod` command.

```bash
$ usermod -aG sudo {USER_NAME}
```

**_Source(s)_**

- [Linuxize](https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/)
- [Linuxize](https://linuxize.com/post/how-to-create-a-sudo-user-on-ubuntu/)
