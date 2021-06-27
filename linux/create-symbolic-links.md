# Create Symbolic Links

> ln - make links between files

`ln` command is used to create a symbolic link. By default `ln` creates a hard link, but we can use `-s` option to create a symbolic link.

## Usage

### Adding Symbolic Links

```bash
$ ln -s {ORIGINAL_FILE} {LINKED_FILE}
```

This will create a symbolic link.

```bash
$ ln -sf {ORIGINAL_FILE} {LINKED_FILE}
```

**Note:** `-f` option overwrites the exisiting symbolic link.

### Adding Symbolic Links Between Directories

```bash
$ ln -s {ORIGINAL_DIRECTORY} {DIRECTORY_TO_BE_LINKED}
```

This creates a symbolic link link between two directories.

### Deleting Symbolic Links

To remove a symbolic link, we can either remove the linked file by using `rm` or use `unlink` to do the same thing.

```bash
$ rm {LINKED_FILE}
$ unlink {LINKED_FILE}
```

**_Source: [phoenixNAP](https://phoenixnap.com/kb/symbolic-link-linux)_**
