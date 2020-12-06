# Convert WSL1 to WSL2

To convert WSL1 to WSL2, we first need to ensure `Virtual Machine Platform` is enabled in Windows Programs and Features settings.

## Process

First ensure, [kernel component](https://aka.ms/wsl2kernel) is installed.

To see current Linux Distros -

```shell
wsl --list --verbose
```

Set WSL2 Version as default -

```shell
wsl --set-default-version 2
```

Then to actually convert WSL1 Linux Distro to WSL2, run -

```shell
wsl --set-version {DISTRO_NAME} 2
```

**_Source: [Microsoft Docs](https://docs.microsoft.com/en-us/windows/wsl/install-win10)_**
