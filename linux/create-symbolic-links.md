# Create Symbolic Links

> ln - make links between files

`ln` command is used to create a symbolic link. By default `ln` creates a hard link, but we can use `-s` option to create a symbolic link.

## Example

```bash
ln -s {ORIGINAL_FILE} {LINKED_FILE}
```

This will create a symbolic link.

```
ln -sf {ORIGINAL_FILE} {LINKED_FILE}
```

**Note:** `-f` option overwrites the exisiting symbolic link.

**_Source: [phoenixNAP](https://phoenixnap.com/kb/symbolic-link-linux)_**
