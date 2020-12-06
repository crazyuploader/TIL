# Convert WSL1 to WSL2

To convert WSL1 to WSL2, we first need to ensure `Virtual Machine Platform` is enabled in Windows Programs and Features settings.

## Process

**Note:** First ensure, [kernel](https://aka.ms/wsl2kernel) component is installed, then run -

### To see current Linux Distros -

```shell
wsl --list --verbose
```

### Set WSL2 Version as default -

```shell
wsl --set-default-version 2
```

### Then to actually convert WSL1 Linux Distro to WSL2, run -

```shell
wsl --set-version {DISTRO_NAME} 2
```

WSL1 Distro should now be converted to WSL2, you can verify the same by runnig -

```shell
wsl --list --verbose
```

**_Source: [Microsoft Docs](https://docs.microsoft.com/en-us/windows/wsl/install-win10)_**
