# Get Errors in Running Services using Journalctl

To get errors in running services, we can `journalctl` command to list out the erros from system journals.

## Example: List Errors since Last Boot

```
journalctl -p -3 -xb
```

Here, `-x` provides extra information, and `-b` arguments means show errors since last boot.

**_Source: [Unix - Stack Exhange](https://unix.stackexchange.com/a/457609)_**
