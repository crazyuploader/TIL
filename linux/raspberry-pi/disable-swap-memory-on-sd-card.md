# Disable Swap Memory on SD Card

Here's how we can disable the swap memory on SD Card in Raspberry Pi -

## Disabling the swap memory on SD Card

**1. Turn off the swap file:**

```bash
sudo dphys-swapfile swapoff
```

**2. Uninstall the swap file:**

```bash
sudo dphys-swapfile uninstall
```

**3. Remove the swap file service:**

```bash
sudo update-rc.d dphys-swapfile remove
```

**4. Remove the swap file manager [Optional]:**

```bash
sudo apt purge dphys-swapfile -y
```

**5. Verifiy the swap is disabled:**

```bash
free -mh
```

***Source: [Pi Australia](https://raspberry.piaustralia.com.au/blogs/news/how-to-disable-swap-on-raspberry-pi-os-and-use-a-usb-drive-instead)***
